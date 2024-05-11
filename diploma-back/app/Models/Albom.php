<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Albom extends Model
{
    use HasFactory;
    protected $fillable = [
        'id_user',
    ];
    public $timestamps = false;
    protected $table = 'alboms';
}
