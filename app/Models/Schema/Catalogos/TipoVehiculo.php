<?php

namespace App\Models\Schema\Catalogos;

use Illuminate\Database\Eloquent\Model;

class TipoVehiculo extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'churubuscoclean.tipos_vehiculo';
    /**
     * The primary key associated with the table.
     *
     * @var string
     */
    protected $primaryKey = 'tipo_vehiculo_id';
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
        'tipo_vehiculo_id',
        'descripcion_tipo_vehiculo'
    ];
}
