<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\User;
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();
        User::factory()->create([
            'name' => 'jcdominguez',
            'nombre' => 'Juan Carlos Hérnandez Domínguez',
            'email' => 'test@example.com',
            'puesto' => 'Jefe de publicidad en Churubsuco Clean',
            'password' => Hash::make('12345678'),
        ]);
    }
}
