<?php

use App\Http\Controllers\FileUpload;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});

Route::get('/kapcsolat', function () {
    return view('contact');
});

Route::get('/xmlupload', [FileUpload::class, 'createForm']);
Route::post('/xmlupload', [FileUpload::class, 'fileUpload'])->name('fileUpload');

Route::get('/logs', [App\Http\Controllers\LogController::class, 'index'])->name('logs');
Route::get('/persons', [App\Http\Controllers\PersonController::class, 'index'])->name('persons');
