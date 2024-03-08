<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\TransaccionesServices;

class TransaccionesController extends Controller
{
    /**
     * Almacena una transaccion resultante de un cotizador de servicios
     *
     * @param  Illuminate\Http\Request  $request peticion con la informacion de un cotizador
     * @return json Datos de la transaccion creada
     */
    public function saveTransaccion(Request $request){
        $datos = $request->all();
        //Validamos si los datos tienen la estructura correcta
        $transaccionServices= new TransaccionesServices();
        $caracteristicas = $transaccionServices->validaDatos($datos);
        //Pasando la validacion, procedemos a guardar los datos de la transaccion
        $respuesta = $transaccionServices->saveTransaccion($caracteristicas,$datos);
        //Regresamos datos de la transaccion
        return response($respuesta, 200);
    }
}
