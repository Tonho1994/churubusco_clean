<?php

namespace App\Models\Schema\PaginasSecciones;

use Illuminate\Database\Eloquent\Model;

class Seccion extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'churubuscoclean.secciones';
    /**
     * The primary key associated with the table.
     *
     * @var string
     */
    protected $primaryKey = 'seccion_id';
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
        'seccion_id',
        'descripcion_seccion'
    ];
}
