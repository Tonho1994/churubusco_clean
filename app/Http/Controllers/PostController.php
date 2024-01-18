<?php

namespace App\Http\Controllers;

use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Support\Facades\Validator;
use App\Models\Post;

class PostController extends Controller
{
    /**
     * Obtiene los post del blog de noticias
     *
     * @param  string  $id Identificador del post
     * @return json Datos de los posts encontrados
     */
    public function getPosts(string $id='0'){
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
            return ['posts'=>Post::all()->toArray()];
        }
        else{
            return ['posts'=>Post::find($validator->validated()['id'])->toArray()];
        }
    }
}
