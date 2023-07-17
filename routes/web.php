<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\FormController;
use App\Http\Controllers\LandingController;
use App\Http\Controllers\SuksesController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\SuperadminController;


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
Route::get('/superadmin/index', [SuperadminController::class, 'index'])->name('superadmin.index')->middleware('auth');

//Rute CRUD Superadmin
Route::get('/superadmin', [SuperadminController::class, 'index'])->name('superadmin.index');
Route::post('/superadmin', [SuperadminController::class, 'store'])->name('superadmin.store'); 
Route::get('/superadmin/create', [SuperadminController::class, 'create'])->name('superadmin.create');
Route::get('/superadmin/{id}/edit', [SuperadminController::class, 'edit'])->name('superadmin.edit');
Route::delete('/superadmin/{id}', [SuperadminController::class, 'destroy'])->name('superadmin.destroy');
Route::get('/superadmin/{id}/edit', [SuperadminController::class, 'edit'])->name('superadmin.edit');
Route::put('superadmin/{id}/edit', [SuperadminController::class, 'update'])->name('superadmin.update');
