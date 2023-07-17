<?php

namespace App\Http\Controllers;

use App\Models\Opd;
use Illuminate\Http\Request;
use App\Models\Pengunjung;

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
}
