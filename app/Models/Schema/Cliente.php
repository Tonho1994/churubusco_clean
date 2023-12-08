<?php

namespace App\Models\Schema;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Cliente extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'churubuscoclean.clientes';
    /**
     * The primary key associated with the table.
     *
     * @var string
     */
    protected $primaryKey = 'transaccion_id';
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
        'correo_electronico',
        'telefono',
        'nombre',
        'apellido_paterno',
        'apellido_materno',
        'calle',
        'colonia',
        'municipio',
        'estado',
        'codigo_postal',
    ];
    /**
     * transaccion qeu realizo el cliente
     */
    public function transaccion(): BelongsTo
    {
        return $this->belongsTo(Transaccion::class, 'transaccion_id', 'transaccion_id');
    }
}
