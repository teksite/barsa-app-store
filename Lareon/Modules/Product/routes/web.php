<?php

use Illuminate\Support\Facades\Route;
use Lareon\Modules\Product\App\Http\Controllers\Web\Client\Products\ProductsController;
use Lareon\Modules\Product\App\Http\Controllers\Web\Client\Versions\VersionsController;

Route::prefix('products')->name('products.')->group(function () {
   Route::get('/', [ProductsController::class,'index'])->name('index');
   Route::get('/{product:slug}', [ProductsController::class,'show'])->name('show');
   Route::get('/{product:slug}/versions', [VersionsController::class,'index'])->name('versions.index');
});
