<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pengunjung;
use Illuminate\Support\Facades\Auth;



class DashboardController extends Controller
{
    public function index()
    {
        // Ambil data pengunjung dari tabel tbl_pengunjung
        $pengunjung = Pengunjung::all();
        $jumlah_pengunjung = Pengunjung::count();

        // Tampilkan halaman dashboard dengan data pengunjung
        return view('admin/dashboard', compact('pengunjung'));
        //return view('admin/jumlahpengunjung', compact('jumlah_pengunjung'));
    }

    public function jumlahPengunjung()
    {
        $user = Auth::user();
        // Kode untuk aksi 'jumlahpengunjung'
        // Misalnya, ambil data jumlah pengunjung dari model Pengunjung
        $jumlahPengunjung = Pengunjung::where('id_opd', $user->id_opd)->count();        

        // Kemudian kembalikan tampilan 'jumlahpengunjung.blade.php' dengan data yang diperlukan
        return view('admin/jumlahpengunjung', ['jumlahPengunjung' => $jumlahPengunjung]);
    }
}

