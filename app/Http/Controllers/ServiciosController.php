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
    public function getServicios(?string $id='0'){
        //Validamos
        $rules = [
            'id' => 'integer',
        ];
        $messages = [
            'id.integer' => 'Solo se permiten números enteros.',
        ];
        $validator = Validator::make(['id'=>$id], $rules,$messages);
        if ($validator->fails()) {
            throw new HttpResponseException(response()->json([
                'success'   => false,
                'errors'      => $validator->errors()
            ],422));
        }
        //Entregamos el arreglo de datos de acuerdo a lo solicitado
        if($validator->validated()['id']==0){
            return new ProductoServicioCollection(ProductoServicio::servicios()
                ->select('producto_servicio_id','nombre')
                ->get());
        }
        else{
            return new ProductoServicioCollection(ProductoServicio::ServicioHijos($id)
                ->get());
        }
    }
}
