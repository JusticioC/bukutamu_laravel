<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SuksesController extends Controller
{
    public function store(Request $request)
    {
       
        return view('sukses');
    }
}
