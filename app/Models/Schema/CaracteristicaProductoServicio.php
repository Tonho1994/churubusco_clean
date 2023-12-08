<?php

namespace App\Models\Schema;

use App\Models\Schema\ProductoServicio;
use Illuminate\Database\Eloquent\Model;
use Thiagoprz\CompositeKey\HasCompositeKey;
use Illuminate\Database\Eloquent\Relations\BelongsTo;


class CaracteristicaProductoServicio extends Model
{
    use HasCompositeKey;
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'churubuscoclean.caracteristicas_productos_servicios';
    /**
     * The primary key associated with the table.
     *
     * @var string
     */
    protected $primaryKey = ['producto_servicio_id', 'atributo'];
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
        'producto_servicio_id',
        'atributo',
        'campo_tabla'
    ];

    //RELACIONES

    /**
     * producto_servicio al que pertenece la caracteristica
     */
    public function productoServicio(): BelongsTo
    {
        return $this->belongsTo(ProductoServicio::class, 'producto_servicio_id', 'producto_servicio_id');
    }
}
