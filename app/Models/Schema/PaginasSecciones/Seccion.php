<?php

namespace App\Models\Schema\PaginasSecciones;

use Illuminate\Database\Eloquent\Model;
use App\Models\Schema\PaginasSecciones\Pagina;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Seccion extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'churubuscoclean.secciones';
    /**
     * The primary key associated with the table.
     *
     * @var string
     */
    protected $primaryKey = 'seccion_id';
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
     * @var array <int, string>
     */
    protected $fillable = [
        'seccion_id',
        'descripcion_seccion'
    ];
    /**
     * producto_servicio al que pertenece el material
     */
    public function pagina(): BelongsToMany
    {
        return $this->belongsToMany(Pagina::class, 'paginas_secciones', 'seccion_id', 'pagina_id')->withPivot('contenido');
    }
}
