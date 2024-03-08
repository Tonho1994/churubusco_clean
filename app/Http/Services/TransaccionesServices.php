<?php

namespace App\Http\Services;

use Throwable;
use App\Models\Schema\Transaccion;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\Models\Schema\ProductoServicio;
use App\Models\Schema\DetalleTransaccion;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class TransaccionesServices
{
    /**
     * Mensajes de validacion
    */
    private array $mensajes;
    public function __construct(){
        $this->mensajes= [
            'required' => "El campo ':attribute' es obligatorio.",
            'numeric' => "El campo ':attribute' debe ser númerico.",
            'exists' => "El servicio que esta solicitando no existe.",
        ];
    }
    /**
     * Guarda los datos de una transaccion
     *
     * @param  object  $caracteristicas Caracteristicas del servicio a guardar en transacciones
     * @param  array  $datos datos a guardar en la tabla de transacciones
     * @return array    respuesta si fue exitosa
    */
    public function saveTransaccion($caracteristicas,$datos){
        //creamos arreglo de datos
        foreach ($caracteristicas as $caracteristica) {
            $servicio[$caracteristica->campo_tabla]=$datos[$caracteristica->atributo];
        }
        try {
            //creamos la transaccion
            DB::beginTransaction();
            $transaccion = Transaccion::create();
            //creamos el costo de dicha transaccion
            $transaccionCosto =$transaccion->costos()->create([
                'transaccion_id'=>$transaccion->transaccion_id,
                'producto_servicio_id'=>$datos['producto_servicio_id'],
                'consecutivo_productos_servicios'=>1,
                'total_productos'=>$datos['total_productos'],
                'impuesto'=>0,
                'total_costo'=>0
            ]);
            //y el detalle de la transaccion
            DetalleTransaccion::create([
                'transaccion_id'=>$transaccionCosto->transaccion_id,
                'producto_servicio_id'=>$transaccionCosto->producto_servicio_id,
                'consecutivo_productos_servicios'=>$transaccionCosto->consecutivo_productos_servicios,
                'campo001'=>isset($servicio['campo001']) ? $servicio['campo001'] : NULL,
                'campo002'=>isset($servicio['campo002']) ? $servicio['campo002'] : NULL,
                'campo003'=>isset($servicio['campo003']) ? $servicio['campo003'] : NULL,
                'campo004'=>isset($servicio['campo004']) ? $servicio['campo004'] : NULL,
                'campo005'=>isset($servicio['campo005']) ? $servicio['campo005'] : NULL,
                'campo006'=>isset($servicio['campo006']) ? $servicio['campo006'] : NULL,
                'campo007'=>isset($servicio['campo007']) ? $servicio['campo007'] : NULL,
                'campo008'=>isset($servicio['campo008']) ? $servicio['campo008'] : NULL,
                'campo009'=>isset($servicio['campo009']) ? $servicio['campo009'] : NULL,
                'campo0010'=>isset($servicio['campo0010']) ? $servicio['campo0010'] : NULL,
            ]);
            DB::commit();
            Log::info(__METHOD__."--->Transacción exitosa: ".$transaccionCosto->transaccion_id);
            return [
                'success'   => true,
                'message'    => 'La transacción fue éxitosamente creada.',
                'data'    => $transaccionCosto
            ];
        } catch (\Throwable $th) {
            //throw $th;
            DB::rollBack();
            Log::warning(__METHOD__."--->Line:".$th->getLine()."----->".$th->getMessage());
            throw new HttpResponseException(response()->json([
                'success'   => false,
                'errors'    => 'Hubo un error con la transacción.',
                'code'    => 'TS-01'
            ],500));
        }
    }
    /**
     * Valida los datos para almacenar una transaccion
     *
     * @param  array  $datos datos a validar de una transaccion
     * @return object Caracteristicas del servicio validado
    */
    public function validaDatos($datos){
        //Validamos el id
        self::validaId($datos['producto_servicio_id'],$this->mensajes);
        //validamos si es principal
        self::esPrincipal($datos['producto_servicio_id']);
        //Validamos caracteristicas
        $caracteristicas = self::validaCaracteristicas($datos,$this->mensajes);
        return $caracteristicas;
    }
    /**
     * Valida que el servicio sea principal
     *
     * @param  int  $producto_servicio_id id del servicio a comparar
     * @return void
    */
    private static function esPrincipal($producto_servicio_id){
        if (ProductoServicio::Servicios()->where('producto_servicio_id',$producto_servicio_id)->exists()==false) {
            throw new HttpResponseException(response()->json([
                'success'   => false,
                'errors'    => 'El servicio que esta solicitando no es principal.'
            ],422));
        }
    }
    /**
     * Valida que sea un id valido
     *
     * @param  int  $id id del servicio a validar
     * @param  array  $messages mensajes de validacion
     * @return void
    */
    private static function validaId($id,$messages){
        $rules['producto_servicio_id'] = 'required|numeric|exists:productos_servicios,producto_servicio_id';
        $validator = Validator::make(['producto_servicio_id'=>$id],$rules,$messages);
        if ($validator->fails()) {
            throw new HttpResponseException(response()->json([
                'success'   => false,
                'errors'    => $validator->errors()
            ],422));
        }
    }
    /**
     * Valida de acuerdo a las caracteriticas
     *
     * @param  array  $datos los datos a validar de acuerdo a las caracteristicas que encontremos
     * @param  array  $messages mensajes de validacion
     * @return object Caracteristicas del servicio validado
    */
    private static function validaCaracteristicas($datos,$messages){
        //Obtenemos las caracteristicas del servicio
        $catacteristicas = ProductoServicio::find($datos['producto_servicio_id'])->caracteristicas()->orderBy('campo_tabla')->get();
        //validamos si existen dichas caracteristicas
        if ($catacteristicas->isEmpty()) {
            throw new HttpResponseException(response()->json([
                'success'   => false,
                'errors'    => 'No hay caracteristicas registradas para ese servicio.',
                'code'    => 'TS-02'
            ],500));
        }
        //creamos las reglas
        foreach ($catacteristicas as $catacteristica) {
            $rules[$catacteristica->atributo] = 'required|numeric';
        }
        $rules['total_productos'] = 'required|numeric';
        //validamos los datos
        $validator = Validator::make($datos,$rules,$messages);
        if ($validator->fails()) {
            throw new HttpResponseException(response()->json([
                'success'   => false,
                'errors'    => $validator->errors()
            ],422));
        }
        return $catacteristicas;
    }
}
