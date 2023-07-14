<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FormData extends Model
{
    use HasFactory;


    public $timestamps = true;
    protected $table = 'tbl_pengunjung'; 
    protected $fillable = ['nama', 'jenkel', 'alamat', 'nohp', 'email', 'maksud', 'saran'];
}
