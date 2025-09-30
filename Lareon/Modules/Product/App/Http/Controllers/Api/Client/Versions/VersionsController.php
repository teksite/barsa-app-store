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
        $page=$request->input('page' , 0);
        $limit=5;
        $offset=($page - 1) * $limit;
        $versions= $product?->versions()->orderBy('published_at','desc')->limit($limit)->offset($offset)->get();
        return VersionsCollection::make($versions);
    }


}
