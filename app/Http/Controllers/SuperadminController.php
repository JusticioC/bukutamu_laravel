<?php

namespace App\Http\Controllers;

use App\Models\Opd;
use Illuminate\Http\Request;
use App\Models\Pengunjung;
use App\Models\User;

class SuperadminController extends Controller
{
    public function index()
    {
        $opd = Opd::all();

        return view('superadmin/index',compact ('opd'));
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

    //========================Function CRUD OPD Purbalingga============================

    public function useropd(){
        $user = User::all();
        return view('superadmin.opd.useropd', compact('user'));
    }
    public function editopd($id)
    {
        $user = User::findOrFail($id);
        return view('superadmin.opd.edit', compact('opd'));
    }
    public function updateopd(Request $request, $id)
    {
        $request->validate([
            'id' => 'required',
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',

        ]);
        $user = User::findOrFail($id);
        $user->update($request->all());

        return redirect()->route('superadmin.opd.useropd')->with('success', 'Admin berhasil diperbarui');
    }
    public function destroyopd($id)
    {
        $user = User::findOrFail($id);
        $user->delete();

        return redirect()->route('superadmin.opd.useropd')->with('success', 'Entri berhasil dihapus');
    }

    public function storeopd(Request $request)
    {
        $request->validate([
            'id' => 'required',
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',
        ]);
        User::create($request->all());
        return redirect()->route('superadmin.opd.useropd')->with('success', 'Admin berhasil ditambahkan');
    }
    public function createopd(){
        return view('superadmin.opd.create');
    
    }

}
