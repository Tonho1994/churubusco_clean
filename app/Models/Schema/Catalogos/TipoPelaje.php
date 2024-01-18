<?php

namespace App\Models\Schema\Catalogos;

use App\Models\Schema\ProductoServicio;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class TipoPelaje extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'churubuscoclean.tipos_pelaje';
    /**
     * The primary key associated with the table.
     *
     * @var string
     */
    protected $primaryKey = 'tipo_pelaje_id';
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
        /* 'tipo_pelaje_id', */
        'descripcion'
    ];
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = ['pivot'];

    //RELACIONES

    /**
     * Producto_servicio al qeu pertenece el tipo de pelaje
     */
    public function productoServicio(): BelongsToMany
    {
        return $this->belongsToMany(ProductoServicio::class, 'productos_servicios_tipos_pelaje', 'tipo_pelaje_id', 'producto_servicio_id')->withPivot('habilitado_boolean');
    }
}

