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
        return view('superadmin/index',compact ('opd','user'));
    }

    public function edit($id)
    {
        $opd = Opd::findOrFail($id);
        return view('superadmin.edit', compact('opd'));
    }
    public function update(Request $request, $id)
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
    public function destroy($id)
    {
        $opd = Opd::findOrFail($id);
        $opd->delete();

        return redirect()->route('superadmin.index')->with('success', 'Entri berhasil dihapus');
    }

    public function store(Request $request)
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
    public function create(){
        return view('superadmin.create');
    
    }
    public function pengunjung()
    {
        $pengunjung = Pengunjung::all();

        return view('superadmin.pengunjung', compact('pengunjung'));
        
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
            'id' => 'required',
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',
        ]);
        User::create($request->all());
        return redirect()->route('superadmin.admin.user')->with('success', 'Admin berhasil ditambahkan');
    }
    public function createadmin(){
        return view('superadmin.admin.create');
    
    }

}
