<?php

namespace App\Http\Controllers;

use App\Models\Schema\ProductoServicio;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\ProductoServicioCollection;
use Illuminate\Http\Exceptions\HttpResponseException;

class ServiciosController extends Controller
{
    /**
     * Obtiene los servicios de limpieza disponibles
     *
     * @param  string  $id Identificador del servicio
     * @return json Datos de los servicios encontrados
     */
    public function getServicios(string $id='0'){
        //Validamos
        $rules = [
            'id' => 'integer',
        ];
        $messages = [
            'id.integer' => 'Solo se permiten números enteros.',
        ];
        $validator = Validator::make(['id'=>$id],$rules,$messages);
        if ($validator->fails()) {
            throw new HttpResponseException(response()->json([
                'success'   => false,
                'errors'    => $validator->errors()
            ],422));
        }
        //Entregamos el arreglo de datos de acuerdo a lo solicitado
        if($validator->validated()['id']==0){
            return new ProductoServicioCollection(ProductoServicio::Servicios()
                ->get());
        }
        else{
            //primera solucion de filtrado
            $servicios = self::filtraArray(ProductoServicio::ServicioHijos($validator->validated()['id'])->get()->toArray());
            return response(['servicios'=>$servicios], 200);
            //sin filtrado
            /* return new ProductoServicioCollection(ProductoServicio::ServicioHijos($validator->validated()['id'])
                ->get()); */
        }
    }
    /**
     * Filtra un arreglo de servicios
     *
     * @param  array  $datos array de servicios
     * @return array El mismo array sin llaves vacias
     */
    private static function filtraArray(array $datos){
        foreach($datos as $key => $servicio) {
            if(empty($servicio['materiales'])) {
                unset($datos["$key"]['materiales']);
            }
            if(empty($servicio['tipos_vehiculos'])) {
                unset($datos["$key"]['tipos_vehiculos']);
            }
            if(empty($servicio['tamanos'])) {
                unset($datos["$key"]['tamanos']);
            }
            if(empty($servicio['tipos_colchones'])) {
                unset($datos["$key"]['tipos_colchones']);
            }
            if(empty($servicio['tipos_pelajes'])) {
                unset($datos["$key"]['tipos_pelajes']);
            }
            if(empty($servicio['padre_producto_servicio_id'])) {
                unset($datos["$key"]['padre_producto_servicio_id']);
            }
        }
        return $datos;
    }
}
