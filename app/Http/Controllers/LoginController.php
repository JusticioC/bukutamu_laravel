<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use App\Models\User;
use Illuminate\Support\Facades\Hash; 
class LoginController extends Controller
{
    public function login(Request $request)
    {
        if ($request->isMethod('post')) {
            $data = [
                'name' => $request->input('name'),
                'password' => $request->input('password'),
            ];
    
            if (Auth::attempt($data)) {
                return redirect('/admin/dashboard');
            } else {
                Session::flash('error', 'Username atau Password Salah');
                return redirect()->back();
            }
        } else {
            return view('auth/login');
        }
    }
    public function actionlogin(Request $request)
    {
        $data = $request->validate([
            'name' => 'required',
            'password' => 'required',
        ]);
    
        if (Auth::attempt($data)) {
            $user = Auth::user();
            if ($user->role === 'admin') {
                return redirect('admin/dashboard');
            } else if ($user->role === 'superadmin') {
                return redirect('superadmin/index');
            } else {
                Session::flash('error', 'Username atau Password Salah');
                return redirect()->back()->withInput();
            }
        } else {
            Session::flash('error', 'Username atau Password Salah');
            return redirect()->back()->withInput();
        }
    }
    
    public function actionlogout()
    {
        Auth::logout();
        return redirect('admin/dashboard');
    }
    public function editPassword()
{
    return view('admin.edit-password');
}
public function updatePassword(Request $request)
{
    $data = $request->validate([
        'current_password' => 'required',
        'new_password' => 'required|min:8|different:current_password',
        'confirm_password' => 'required|same:new_password',
    ]);

    $user = Auth::user();

    if (Hash::check($data['current_password'], $user->password)) {
        DB::table('users')
            ->where('id', $user->id)
            ->update(['password' => Hash::make($data['new_password'])]);

        return redirect()->route('edit-password')->with('success', 'Password updated successfully.');
    } else {
        return redirect()->route('edit-password')->with('error', 'Current password is incorrect.');
    }
}

}


