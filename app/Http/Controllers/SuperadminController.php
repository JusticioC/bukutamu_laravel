<?php

namespace App\Http\Controllers;

use App\Models\Opd;
use Illuminate\Http\Request;
use App\Models\Pengunjung;
use App\Models\User;

class SuperadminController extends Controller
{

        //========================Function CRUD OPD Purbalingga============================

    public function index()
    {
        $opd = Opd::all();
        $user = User::all();
        //return view('superadmin/index',compact ('opd','user'));
            // Menghitung jumlah user admin
            $jumlah_user = User::where('role', 'admin')->count();
            $jumlah_pengunjung = Pengunjung::count();
            $jumlah_opd = Opd::count();
            return view('superadmin.index', compact('user', 'jumlah_pengunjung','jumlah_opd','jumlah_user'));
    }

    public function editopd($id)
    {
        $opd = Opd::findOrFail($id);
        return view('superadmin.opd.edit', compact('opd'));
    }
    public function updateopd(Request $request, $id)
    {
        $request->validate([
            'nama' => 'required',
            'alamat' => 'required',
            'email' => 'required',
            'nohp' => 'required',

        ]);
        $opd = Opd::findOrFail($id);
        $opd->update($request->all());

        return redirect()->route('superadmin.index')->with('success', 'OPD berhasil diperbarui');
    }
    public function destroyopd($id)
    {
        $opd = Opd::findOrFail($id);
        $opd->delete();

        return redirect()->route('superadmin.index')->with('success', 'Entri berhasil dihapus');
    }

    public function storeopd(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'alamat' => 'required',
            'email' => 'required',
            'nohp' => 'required',
        ]);
        Opd::create($request->all());
        return redirect()->route('superadmin.index')->with('success', 'Entri berhasil ditambahkan');
    }
    public function createopd(){
        return view('superadmin.opd.create');
    
    }
    public function pengunjung()
    {
        $pengunjung = Pengunjung::all();

        return view('superadmin.pengunjung', compact('pengunjung'));
    
    }
    public function opd()
    {
        $opd = Opd::all();

        return view('superadmin.opd.dataopd', compact('opd'));
    
    }

    //========================Function CRUD Admin Purbalingga============================

    public function useradmin(){
        $user = User::all();
        return view('superadmin.admin.user', compact('user'));
    }
    public function editadmin($id)
    {
        $user = User::findOrFail($id);
        return view('superadmin.admin.edit', compact('user'));
    }
    public function updateadmin(Request $request, $id)
    {
        $request->validate([
            'id' => 'required',
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',

        ]);
        $user = User::findOrFail($id);
        $user->update($request->all());

        return redirect()->route('superadmin.admin.user')->with('success', 'Admin berhasil diperbarui');
    }
    public function destroyadmin($id)
    {
        $user = User::findOrFail($id);
        $user->delete();

        return redirect()->route('superadmin.admin.user')->with('success', 'Entri berhasil dihapus');
    }

    public function storeadmin(Request $request)
    {
        $request->validate([
            'id_opd' => 'required',
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',
        ]);

        $requestData = $request->all();
        $requestData['role'] = 'admin'; // Mengisi kolom 'role' dengan nilai 'admin'
    
        User::create($requestData);
        return redirect()->route('superadmin.admin.user')->with('success', 'Admin berhasil ditambahkan');
    }
    public function createadmin(){
        return view('superadmin.admin.create');
    
    }
   

}
