<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pengunjung;

class DashboardController extends Controller
{
    public function index()
    {
        // Ambil data pengunjung dari tabel tbl_pengunjung
        $pengunjung = Pengunjung::all();

        // Tampilkan halaman dashboard dengan data pengunjung
        return view('dashboard', compact('pengunjung'));
    }
}
