<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pengunjung;
use App\Models\Admin;

class AdminDashboardController extends Controller
{
    public function index()
    {
        $admins = Admin::all();
        $pengunjungs = Pengunjung::all();
       return view('admin.dashboard', compact('admins','pengunjungs'));
       // return view('admin.dashboard', compact('pengunjung'));
    }
}
