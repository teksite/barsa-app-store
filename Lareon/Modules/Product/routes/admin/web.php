<?php

use Illuminate\Support\Facades\Route;
use Lareon\Modules\Product\App\Http\Controllers\Web\Admin\Products\ProductsController;
use Lareon\Modules\Product\App\Http\Controllers\Web\Admin\Products\ProductsTrashController;
use Lareon\Modules\Product\App\Http\Controllers\Web\Admin\Properties\GroupsPropertiesController;
use Lareon\Modules\Product\App\Http\Controllers\Web\Admin\Properties\PropertiesController;
use Lareon\Modules\Product\App\Http\Controllers\Web\Admin\Versions\ProductVersionsController;

Route::prefix('products')->name('products.')->group(function () {
   Route::resource('groups.properties', PropertiesController::class)->scoped();
   Route::resource('groups', GroupsPropertiesController::class);
});
Route::resource('products', ProductsController::class);
Route::trashResource('products', ProductsTrashController::class);
Route::resource('products.versions', ProductVersionsController::class)->scoped();

