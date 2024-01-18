<?php

namespace App\Http\Controllers\Auth\Api;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class AuthController extends Controller
{
    /**
     * Funcion para iniciar sesion (obtener un token valido)
     *
     * @param  Request $request Peticion post con username y password
     * @return json token creado para la peticion
     */
    public function login(Request $request): JsonResponse
    {
        $rules = [
            'user' => 'required|max:20|min:4',
            'password' => 'required|max:60|min:8'
        ];
        $messages = [
            'user.required' => 'El usuario es necesario',
            'user.max' => 'Máximo 20 caracteres',
            'user.min' => 'Minimo 4 caracteres',
            'password.required' => 'La contraseña es necesaria',
            'password.max' => 'Máximo 60 caracteres',
            'password.min' => 'Minimo 8 caracteres',
        ];
        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()) {
            throw new HttpResponseException(response()->json([
                'success'   => false,
                'errors'    => $validator->errors()
            ],422));
        }
        $credentials = [
            'name'=>$request->user,
            'password'=>$request->password
        ];
        if (Auth::attempt($credentials)) {
            return response()->json([
                'token' => $request->user()->createToken('Angular_token')->plainTextToken
            ]);
        }
        else{
            throw new HttpResponseException(response()->json([
                'success'   => false,
                'errors'    => 'El usuario y/o la contraseña no coinciden con nuestros registros.'
            ],422));
        }
    }
    /**
     * Funcion para cerrar sesion (canelar un token)
     *
     * @return json mensaje de session cerrada
     */
    public function logout(): JsonResponse
    {
        auth()->user()->tokens()->delete();
        return response()->json([
            'message' => 'Logged out'
        ]);
    }
}
