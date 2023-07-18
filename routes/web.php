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

Route::get('/superadmin/pengunjung', [SuperadminController::class, 'pengunjung'])->name('superadmin.pengunjung');
Route::get('/superadmin/opd/dataopd', [SuperadminController::class, 'opd'])->name('superadmin.opd.dataopd');
Route::get('/superadmin/admin/user', [SuperadminController::class, 'useradmin'])->name('superadmin.admin.user');


//Rute CRUD OPD Purbalingga Superadmin
Route::get('/superadmin', [SuperadminController::class, 'index'])->name('superadmin.opd.index');
Route::post('/superadmin', [SuperadminController::class, 'storeopd'])->name('superadmin.opd.store'); 
Route::get('/superadmin/create/opd', [SuperadminController::class, 'createopd'])->name('superadmin.opd.create');
Route::get('/superadmin/opd/{id}/edit', [SuperadminController::class, 'editopd'])->name('superadmin.opd.edit');
Route::delete('/superadmin/opd/{id}', [SuperadminController::class, 'destroyopd'])->name('superadmin.opd.destroy');
Route::get('/superadmin/opd/{id}/edit', [SuperadminController::class, 'editopd'])->name('superadmin.opd.edit');
Route::put('superadmin/opd/{id}/edit', [SuperadminController::class, 'updateopd'])->name('superadmin.opd.update');

//Rute CRUD Admin Purbalingga Superadmin ( Ketuker )
Route::get('/superadmin/admin', [SuperadminController::class, 'index'])->name('superadmin.admin.index');
Route::post('/superadmin/admin', [SuperadminController::class, 'storeadmin'])->name('superadmin.admin.store'); 
Route::get('/superadmin/admin/create', [SuperadminController::class, 'createadmin'])->name('superadmin.admin.create');
Route::get('/superadmin/admin/{id}/edit', [SuperadminController::class, 'editadmin'])->name('superadmin.admin.edit');
Route::delete('/superadmin/admin/{id}', [SuperadminController::class, 'destroyadmin'])->name('superadmin.admin.destroy');
Route::put('superadmin/admin/{id}/edit', [SuperadminController::class, 'updateadmin'])->name('superadmin.admin.update');

