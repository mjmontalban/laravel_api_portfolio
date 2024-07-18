<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Booking extends Model
{
    use HasFactory;
    public $timestamps = false;
    const CREATED_AT = 'date_created';
    const UPDATED_AT = 'date_modified';

    public function user()
    {
        return $this->belongsTo(User::class, 'agency_listing_id');
    }
}
