<?php


use Illuminate\Support\Facades\Route;
use Lareon\Modules\Notifier\App\Http\Controllers\Web\Admin\Notifier\ItemsController;

Route::resource('notifiers', ItemsController::class);
