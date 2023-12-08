<?php

namespace App\Models\Schema\PaginasSecciones;

use Illuminate\Database\Eloquent\Model;
use App\Models\Schema\PaginasSecciones\Seccion;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

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
     * Indicates if the model's ID is auto-incrementing.
     *
     * @var bool
     */
    public $incrementing = false;
    /**
     * The data type of the auto-incrementing ID.
     *
     * @var string
     */
    protected $keyType = 'string';
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
    /**
     * Secciones de la pagina
     */
    public function secciones(): BelongsToMany
    {
        return $this->belongsToMany(Seccion::class, 'paginas_secciones', 'pagina_id', 'seccion_id')->withPivot('contenido');
    }
}
