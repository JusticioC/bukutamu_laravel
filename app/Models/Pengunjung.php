<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengunjung extends Model
{   
    public $timestamps = false;
    use HasFactory;
    protected $table = 'tbl_pengunjung';
    protected $fillable = ['nama', 'jenkel', 'alamat', 'nohp', 'email', 'maksud', 'saran','tanggal','created_at'];
    protected static function booted()
    {
        static::creating(function ($model) {
            $model->tanggal = \Carbon\Carbon::now()->toDateString();
        });
    }


    
}

