<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pengunjung;

class SuperadminController extends Controller
{
    public function index()
    {
        $pengunjung = Pengunjung::all();


        return view('superadmin/index',compact ('pengunjung'));
    }
}
