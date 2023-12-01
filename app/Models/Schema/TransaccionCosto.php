<?php

namespace App\Models\Schema;

use Illuminate\Database\Eloquent\Model;
use Thiagoprz\CompositeKey\HasCompositeKey;

class TransaccionCosto extends Model
{
    use HasCompositeKey;
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'churubuscoclean.transacciones_costo';
    /**
     * The primary key associated with the table.
     *
     * @var string
     */
    protected $primaryKey = ['transaccion_id', 'producto_servicio_id', 'consecutivo_productos_servicios'];
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
        'transaccion_id',
        'producto_servicio_id',
        'consecutivo_productos_servicios',
        'total_productos',
        'impuesto',
        'costo_distancia',
        'total_costo'
    ];
}
