<?php

namespace App\Models\Schema;

use Illuminate\Database\Eloquent\Model;
use App\Models\Schema\Catalogos\Material;
use App\Models\Schema\Catalogos\TipoVehiculo;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Builder;
use App\Models\Schema\CaracteristicaProductoServicio;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

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
        /* 'producto_servicio_id', */
        /* 'padre_producto_servicio_id', */
        /* 'costo', */
        /* 'nombre' */
    ];

    //SCOPES

    /**
     * Obtiene los Servicios Principales.
     */
    public function scopeServicios(Builder $query): void
    {
        $query->where('padre_producto_servicio_id', null);
    }

    /**
     * Obtiene el servicio principal y los servicios hijos.
     */
    public function scopeServicioHijos(Builder $query,int $id): void
    {
        $query->where('producto_servicio_id',$id)
            ->orWhere('padre_producto_servicio_id', $id);
    }

    //RELACIONES

    /**
     * Materiales que puede tener un producto_servicio
     */
    public function materiales(): BelongsToMany
    {
        return $this->belongsToMany(Material::class, 'productos_servicios_materiales', 'producto_servicio_id', 'material_id')->withPivot('habilitado_boolean');
    }
    /**
     * Tipos de Vehiculo que puede tener un producto_servicio
     */
    public function tiposVehiculos(): BelongsToMany
    {
        return $this->belongsToMany(TipoVehiculo::class, 'productos_servicios_tipos_vehiculo', 'producto_servicio_id', 'tipo_vehiculo_id')->withPivot('habilitado_boolean');
    }
    /**
     * Caracteristicas del producto_servicio
     */
    public function caracteristicas(): HasOne
    {
        return $this->hasOne(CaracteristicaProductoServicio::class, 'producto_servicio_id', 'producto_servicio_id');
    }

}
