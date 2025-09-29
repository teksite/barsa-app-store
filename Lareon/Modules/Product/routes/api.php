<?php

use Illuminate\Support\Facades\Route;
use Lareon\Modules\Product\App\Http\Controllers\Api\Client\Products\ProductsController;
use Lareon\Modules\Product\App\Http\Controllers\Api\Client\Versions\VersionsController;

Route::prefix('products')->name('products.')->group(function () {
   Route::get('/', [ProductsController::class,'index']);
   Route::get('/{product:slug}', [ProductsController::class,'show']);
   Route::get('/{product:slug}/versions', [VersionsController::class,'index']);

});
