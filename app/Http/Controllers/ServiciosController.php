<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Schema\ProductoServicio;
use App\Http\Resources\ProductoServicioCollection;

class ServiciosController extends Controller
{
    //
    public function getServicios(Request $request, int $id=0){
        //dd(ProductoServicio::find($id));
        if($id==0){
            return new ProductoServicioCollection(ProductoServicio::servicios()->get());
        }
        else{
            return new ProductoServicioCollection(ProductoServicio::where('producto_servicio_id',$id)->get());
        }
    }
}
