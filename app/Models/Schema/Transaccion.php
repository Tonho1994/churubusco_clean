<?php

namespace App\Models\Schema;

use Illuminate\Database\Eloquent\Model;

class Transaccion extends Model
{
    /**
     * The "booted" method of the model.
     */
    protected static function booted(): void
    {
        static::creating(function (Transaccion $transaccion) {
            $transaccion->fecha_alta = now();
        });
    }
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
        'transaccion_id',
        'fecha_alta'
    ];
}
