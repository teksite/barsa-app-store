<?php

namespace Lareon\Modules\Product\App\Http\Controllers\Web\Client\Versions;

use Illuminate\Http\Request;
use Lareon\Modules\Product\App\Http\Controllers\Controller;
use Lareon\Modules\Product\App\Logic\VersionLogic;
use Lareon\Modules\Product\App\Models\Product;

class VersionsController extends Controller
{
    public function index(Product $product)
    {
        $versions=$product->versions()->orderBy('published_at' , 'desc')->limit(20)->get();
        $seo=null;
        return view('pages.products.versions.index' ,compact('product' , 'versions','seo'));
   }
}
