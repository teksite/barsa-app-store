<?php

use Illuminate\Support\Facades\Route;
use Lareon\Modules\Product\App\Http\Controllers\Web\Panel\Products\ProductsController;
use Lareon\Modules\Product\App\Http\Controllers\Web\Panel\Versions\ProductVersionsController;

Route::resource('products', ProductsController::class);
Route::resource('products.versions', ProductVersionsController::class)->scoped();

