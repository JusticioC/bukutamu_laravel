<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\FormController;
use App\Http\Controllers\LandingController;
use App\Http\Controllers\SuksesController;
use App\Http\Controllers\DashboardController;


Route::get('/', function () {
    return view('landing');
});

//Rute untuk menampilkan halaman landing
Route::get('/landing', [LandingController::class, 'index'])->name('landing');

//Rute untuk form
Route::get('/form', [FormController::class, 'showForm'])->name('form.show');
Route::post('/form', [FormController::class, 'submitForm'])->name('form.submit');

//Rute sukses
Route::get('/sukses', function () {
    return view('user.sukses');
});
Route::post('/sukses', [SuksesController::class, 'store'])->name('sukses.store');

// Rute untuk menampilkan halaman login
Route::get('/login', [LoginController::class, 'login'])->name('login');
Route::get('/login', [LoginController::class, 'login'])->name('login');
Route::post('/login', [LoginController::class, 'login'])->name('login');

// Rute untuk proses login
Route::post('actionlogin', [LoginController::class, 'actionlogin'])->name('actionlogin');

//Rute Dashboard Admin
Route::get('/admin/dashboard', [DashboardController::class, 'index'])->name('dashboard')->middleware('auth');

//Rute Logout
Route::get('actionlogout', [LoginController::class, 'actionlogout'])->name('actionlogout')->middleware('auth');

//Rute Superadmin
Route::get('/superadmin/index', function () {
    return view('superadmin.index');
});

