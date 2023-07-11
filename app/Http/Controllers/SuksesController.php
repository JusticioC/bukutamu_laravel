<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\FormData;

class SuksesController extends Controller
{
    public function store(Request $request)
    {
       
        return view('sukses');
    }
}
