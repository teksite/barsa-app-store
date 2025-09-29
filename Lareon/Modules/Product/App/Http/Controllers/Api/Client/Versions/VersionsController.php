<?php

namespace Lareon\Modules\Product\App\Http\Controllers\Api\Client\Versions;

use Illuminate\Http\Request;
use Lareon\Modules\Product\App\Http\Controllers\Controller;
use Lareon\Modules\Product\App\Http\Resources\VersionsCollection;
use Lareon\Modules\Product\App\Models\Product;

class VersionsController extends Controller
{

    public function index(Request $request, Product $product)
    {
        $offset=$request->input('offset' , 0);
        $versions= $product?->versions()->orderBy('published_at','desc')->limit(5)->offset($offset)->get();
        return VersionsCollection::make($versions);
    }


}
