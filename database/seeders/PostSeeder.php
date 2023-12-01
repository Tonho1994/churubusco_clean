<?php

namespace Database\Seeders;

use App\Models\Post;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        Post::create([
            'titulo' => 'Los distintos acabados de un lavado de Piel',
            'subtitulo' => 'No creeras lo que no sabías',
            'body' => '<p>Este es el cuerpo de una publicacion de la pagina <b>CHURUBUSCO CLEAN.</b></p>',
            'url' => 'http://churubuscoclean.com/posts/1',
            'user_id' => '1',
        ]);
        Post::create([
            'titulo' => 'Imagina lo que puedes hacer con jabon comun',
            'subtitulo' => '¡La marca es mexicana!',
            'body' => '<p>Este es el cuerpo de una publicacion de la pagina <b>CHURUBUSCO CLEAN.</b></p>',
            'url' => 'http://churubuscoclean.com/posts/2',
            'user_id' => '1',
        ]);
        Post::create([
            'titulo' => 'Como lavar el interior de mi carro',
            'subtitulo' => 'Sin necesidad de una karcher',
            'body' => '<p>Este es el cuerpo de una publicacion de la pagina <b>CHURUBUSCO CLEAN.</b></p>',
            'url' => 'http://churubuscoclean.com/posts/3',
            'user_id' => '1',
        ]);
        Post::create([
            'titulo' => '¿Babeas mucho? Los mejores metodos para lavar una almohada',
            'subtitulo' => 'Y los cubrealmohadas tambien',
            'body' => '<p>Este es el cuerpo de una publicacion de la pagina <b>CHURUBUSCO CLEAN.</b></p>',
            'url' => 'http://churubuscoclean.com/posts/4',
            'user_id' => '1',
        ]);
        Post::create([
            'titulo' => 'Mi perrito deja mucho pelo ¿Qué hago?',
            'subtitulo' => 'Funciona para gatos también',
            'body' => '<p>Este es el cuerpo de una publicacion de la pagina <b>CHURUBUSCO CLEAN.</b></p>',
            'url' => 'http://churubuscoclean.com/posts/5',
            'user_id' => '1',
        ]);
    }
}
