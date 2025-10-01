<?php

use Illuminate\Support\Facades\Route;
use Lareon\Modules\Menu\App\Http\Controllers\Api\Clinet\Menus\MenusController;

Route::get('/menus/{menu:label}',[MenusController::class,'show']);
