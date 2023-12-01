<?php

namespace App\Models\Schema;

use Illuminate\Database\Eloquent\Model;

class ProductoServicio extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'churubuscoclean.productos_servicios';
    /**
     * The primary key associated with the table.
     *
     * @var string
     */
    protected $primaryKey = 'producto_servicio_id';
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
        'producto_servicio_id',
        'padre_producto_servicio_id',
        'costo',
        'nombre'
    ];

}
