<?php

namespace Lareon\Modules\Product\App\Http\Controllers\Api\Client\Products;

use Illuminate\Http\Request;
use Lareon\Modules\Product\App\Http\Controllers\Controller;
use Lareon\Modules\Product\App\Http\Resources\ProductCollection;
use Lareon\Modules\Product\App\Http\Resources\ProductResource;
use Lareon\Modules\Product\App\Models\Product;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return ProductCollection::make(Product::paginate());
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        return ProductResource::make($product);
    }

}
