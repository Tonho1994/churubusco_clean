<?php

namespace App\Models\Schema;

use App\Models\Schema\Catalogos\Tamano;
use Illuminate\Database\Eloquent\Model;
use App\Models\Schema\Catalogos\Material;
use Illuminate\Database\Eloquent\Builder;
use App\Models\Schema\Catalogos\TipoPelaje;
use App\Models\Schema\Catalogos\TipoColchon;
use App\Models\Schema\Catalogos\TipoVehiculo;
use Illuminate\Database\Eloquent\Relations\HasOne;
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
        /* 'caracteristicas' */
        /* 'imagen' */
    ];

    //SCOPES

    /**
     * Obtiene los Servicios Principales.
     */
    public function scopeServicios(Builder $query): void
    {
        $query->select('producto_servicio_id','nombre','caracteristicas','imagen')
            ->where('padre_producto_servicio_id', null)
            ->orderBy('producto_servicio_id');
    }
    /**
     * Obtiene el servicio principal y los servicios hijos.
     */
    public function scopeServicioHijos(Builder $query,int $id): void
    {
        $query->where('producto_servicio_id',$id)
            ->orWhere('padre_producto_servicio_id', $id)
            ->with(['materiales' => function ($query) {
                $query->where('habilitado_boolean', true);
            }])
            ->with(['tiposVehiculos' => function ($query) {
                $query->where('habilitado_boolean', true);
            }])
            ->with(['tamanos' => function ($query) {
                $query->where('habilitado_boolean', true);
            }])
            ->with(['tiposColchones' => function ($query) {
                $query->where('habilitado_boolean', true);
            }])
            ->with(['tiposPelajes' => function ($query) {
                $query->where('habilitado_boolean', true);
            }])
            ->orderBy('producto_servicio_id');
    }

    //RELACIONES

    /**
     * Materiales que puede tener un producto_servicio
     */
    public function materiales(): BelongsToMany
    {
        return $this->belongsToMany(Material::class, 'productos_servicios_materiales', 'producto_servicio_id', 'material_id');
    }
    /**
     * Tipos de Vehiculo que puede tener un producto_servicio
     */
    public function tiposVehiculos(): BelongsToMany
    {
        return $this->belongsToMany(TipoVehiculo::class, 'productos_servicios_tipos_vehiculo', 'producto_servicio_id', 'tipo_vehiculo_id');
    }
    /**
     * Tamaños de los colchones
     */
    public function tamanos(): BelongsToMany
    {
        return $this->belongsToMany(Tamano::class, 'productos_servicios_tamanios', 'producto_servicio_id', 'tamanio_id');
    }
    /**
     * Tipos de colchon
     */
    public function tiposColchones(): BelongsToMany
    {
        return $this->belongsToMany(TipoColchon::class, 'productos_servicios_tipos_colchon', 'producto_servicio_id', 'tipo_colchon_id');
    }
    /**
     * Tipos de pelaje
     */
    public function tiposPelajes(): BelongsToMany
    {
        return $this->belongsToMany(TipoPelaje::class, 'productos_servicios_tipos_pelaje', 'producto_servicio_id', 'tipo_pelaje_id');
    }
    /**
     * Caracteristicas del producto_servicio
     */
    public function caracteristicas(): HasOne
    {
        return $this->hasOne(CaracteristicaProductoServicio::class, 'producto_servicio_id', 'producto_servicio_id');
    }
}
