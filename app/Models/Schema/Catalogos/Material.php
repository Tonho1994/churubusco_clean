<?php

namespace App\Models\Schema\Catalogos;

use App\Models\Schema\ProductoServicio;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;


class Material extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'churubuscoclean.materiales';
    /**
     * The primary key associated with the table.
     *
     * @var string
     */
    protected $primaryKey = 'material_id';
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
        /* 'material_id', */
        'descripcion_material'
    ];

    //RELACIONES

    /**
     * producto_servicio al que pertenece el material
     */
    public function productoServicio(): BelongsToMany
    {
        return $this->belongsToMany(ProductoServicio::class, 'productos_servicios_materiales', 'material_id', 'producto_servicio_id')->withPivot('habilitado_boolean');
    }
}
