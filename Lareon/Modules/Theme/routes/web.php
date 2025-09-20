<?php

use Illuminate\Support\Facades\Route;
use Lareon\Modules\Theme\App\Http\Controllers\Web\Client\Pages\StaticPagesController;
use Lareon\Modules\Theme\App\Http\Controllers\Web\Client\Users\UsersController;


Route::get('/', [StaticPagesController::class ,'home'])->name('home');
Route::get('/search', [StaticPagesController::class ,'search'])->name('search');
Route::get('/profiles/{user:slug}' , [UsersController::class,'show'])->name('users.show');
