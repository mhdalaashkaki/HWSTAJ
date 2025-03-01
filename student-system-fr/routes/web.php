<?php

use App\Http\Controllers\StudentController;
use Illuminate\Support\Facades\Route;

Route::get('/', [StudentController::class, 'index']);
Route::get('/students/list', [StudentController::class, 'list']);
Route::get('/students/search', [StudentController::class, 'search']);
Route::post('/students', [StudentController::class, 'store']);
Route::put('/students/{sid}', [StudentController::class, 'update']);
Route::delete('/students/{sid}', [StudentController::class, 'destroy']);

