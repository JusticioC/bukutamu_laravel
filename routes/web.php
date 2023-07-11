<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\FormController;

Route::get('/', function () {
    return view('welcome');
});

// Rute untuk menampilkan halaman login
Route::get('/login', [AuthController::class, 'showLoginForm'])->name('login');

// Rute untuk proses login
Route::post('/login', [AuthController::class, 'login']);

// Rute untuk proses logout
Route::post('/logout', [AuthController::class, 'logout'])->name('logout');

//Rute untuk form
Route::get('/form', [FormController::class, 'showForm'])->name('form.show');
Route::post('/form', [FormController::class, 'submitForm'])->name('form.submit');
