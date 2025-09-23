<?php

namespace Lareon\Modules\Company\App\Http\Controllers\Ajax\Admin\Companies;

use Illuminate\Http\Request;
use Lareon\Modules\Company\App\Http\Controllers\Controller;
use Lareon\Modules\Company\App\Models\Company;

class CompaniesController extends Controller
{
    public function search(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|min:3'
        ]);
        $companies=Company::query()->where('title','like','%'.$validatedData['title'].'%')->select(['id','title'])->get();

        return response()->json([
            'message'=>'success',
            'data' => $companies,
            'code'=>200
        ]);

    }
}
