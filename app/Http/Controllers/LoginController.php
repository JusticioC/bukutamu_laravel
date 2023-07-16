<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use App\Models\User;

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
        $user = new User();
        $data = $request->validate([
            'name' => 'required',
            'password' => 'required',
        ]);


        if (Auth::Attempt($data)) {
            $user = Auth::user();
            if($user->role==='admin'){
            return redirect('admin/dashboard');
        }   else if($user->role=='superadmin'){
            return redirect('superadmin/index');
        }
        else
        {
            Session::flash('error', 'Username atau Password Salah');
            return redirect()->back()->withInput();
        }
    }
    }
    public function actionlogout()
    {
        Auth::logout();
        return redirect('/');
    }
}