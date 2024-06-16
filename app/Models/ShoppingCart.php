<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ShoppingCart extends Model
{
    use HasFactory;

    public $timestamps = false;

    protected $fillable = [
        'user_id',
       'song_id',
       'songtitle',
       'songprice',
        'quantity',
        'imageurl',
    ];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }


}
