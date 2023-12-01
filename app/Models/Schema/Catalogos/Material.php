<?php

namespace App\Models\Schema\Catalogos;

use Illuminate\Database\Eloquent\Model;

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
        'material_id',
        'descripcion_material'
    ];
}
