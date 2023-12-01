<?php

namespace App\Models\Schema\PaginasSecciones;

use Illuminate\Database\Eloquent\Model;

class Pagina extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'churubuscoclean.paginas';
    /**
     * The primary key associated with the table.
     *
     * @var string
     */
    protected $primaryKey = 'pagina_id';
    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'pagina_id',
        'descripcion_pagina'
    ];
}
