<?php

use Illuminate\Support\Facades\Route;
use Lareon\Modules\Company\App\Http\Controllers\Ajax\Admin\Companies\CompaniesController;

Route::get('companies', [CompaniesController::class ,'search'])->name('companies.search');
