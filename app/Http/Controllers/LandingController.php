<?php

namespace App\Http\Controllers;
use App\Http\Controllers\LandingController;


use Illuminate\Http\Request;

class LandingController extends Controller
{
    public function index()
    {
        return view('landing');
    }
}
