<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'churubuscoclean.posts';

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'titulo',
        'subtitulo',
        'body',
        'img',
        'url',
        'user_id'
    ];

    /**
     * El usuario que hizo el post
     * Relacion 1:1
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
