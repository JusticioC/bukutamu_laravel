<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;

Route::get('/', function () {
    return view('welcome');
});

// Rute untuk menampilkan halaman login
Route::get('/login', [AuthController::class, 'showLoginForm'])->name('login');

// Rute untuk proses login
Route::post('/login', [AuthController::class, 'login']);

// Rute untuk proses logout
Route::post('/logout', [AuthController::class, 'logout'])->name('logout');
