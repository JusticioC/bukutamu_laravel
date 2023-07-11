<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SuksesController extends Controller
{
    public function store(Request $request)
    {
        // Proses penyimpanan data atau tindakan lain yang Anda inginkan
        // setelah formulir berhasil dikirim
        return view('sukses');
    }
}
