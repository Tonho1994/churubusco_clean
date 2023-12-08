<?php

namespace App\Models\Schema;

use App\Models\Schema\TransaccionCosto;
use Illuminate\Database\Eloquent\Model;
use Thiagoprz\CompositeKey\HasCompositeKey;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class DetalleTransaccion extends Model
{
    use HasCompositeKey;
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'churubuscoclean.detalle_transacciones';
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
        'campo001',
        'campo002',
        'campo003',
        'campo004',
        'campo005',
        'campo006',
        'campo007',
        'campo008',
        'campo009',
        'campo010'
    ];
    /**
     * Costo de la transaccion
     */
    public function costo(): BelongsTo
    {
        return $this->belongsTo(TransaccionCosto::class, ['transaccion_id', 'producto_servicio_id','consecutivo_productos_servicios'], ['transaccion_id', 'producto_servicio_id','consecutivo_productos_servicios']);
    }
}
