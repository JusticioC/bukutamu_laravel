<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\FormData;

class FormController extends Controller
{
    public function showForm()
    {
        $hari_ini = DB::table('tbl_pengunjung')->whereDate('TANGGAL', DB::raw('CURDATE()'))->count();
        $total = DB::table('tbl_pengunjung')->count();

        return view('form', ['hari_ini' => $hari_ini, 'total' => $total]);
    }

    public function submitForm(Request $request)
    {
        $data = new FormData();
        $data->nama = $request->input('nama');
        $data->jenkel = $request->input('jenkel');
        $data->alamat = $request->input('alamat');
        $data->nohp = $request->input('nohp');
        $data->email = $request->input('email');
        $data->maksud = $request->input('maksud');
        $data->saran = $request->input('saran');
        $data->save();

        return redirect('/success')->with('success', 'Data berhasil ditambahkan!');
    }
}