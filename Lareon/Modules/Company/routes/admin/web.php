<?php

use Illuminate\Support\Facades\Route;
use Lareon\Modules\Company\App\Http\Controllers\Web\Admin\Companies\CompaniesController;

Route::resource('companies', CompaniesController::class);
