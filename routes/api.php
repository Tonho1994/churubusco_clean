<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ServiciosController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
//Obtiene los posts de los administradores del sistema
Route::get('/posts', [PostController::class, 'getPosts']);
//Obtiene los servicios de limpieza disponibles
Route::get('/servicios/{id?}', [ServiciosController::class, 'getServicios'])->name('get.servicios');

