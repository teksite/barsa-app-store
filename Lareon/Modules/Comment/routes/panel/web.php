<?php

use Illuminate\Support\Facades\Route;
use Lareon\Modules\Comment\App\Http\Controllers\Web\Panel\Comments\CommentsController;

Route::get('/comments',[CommentsController::class ,'index'])->name('comments.index');
