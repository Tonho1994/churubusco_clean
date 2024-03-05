<?php

namespace App\Models\Schema;

use App\Models\Schema\Cliente;
use App\Models\Schema\TransaccionCosto;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Transaccion extends Model
{
    const CREATED_AT = 'fecha_alta';
    const UPDATED_AT = null;
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'churubuscoclean.transacciones';
    /**
     * The primary key associated with the table.
     *
     * @var string
     */
    protected $primaryKey = 'transaccion_id';
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
       /*  'transaccion_id',
        'fecha_alta' */
    ];
    /**
     * Cliente que realizo la compra
     */
    public function cliente(): HasOne
    {
        return $this->hasOne(Cliente::class, 'transaccion_id', 'transaccion_id');
    }
    /**
     * Costos de la transaccion
     */
    public function costos(): HasMany
    {
        return $this->hasMany(TransaccionCosto::class, 'transaccion_id', 'transaccion_id');
    }
    // RELACIONES ENTRE PAGINAS Y SECCIONES
}
