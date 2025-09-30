<?php

namespace Lareon\Modules\Product\App\Http\Controllers\Api\Client\Products;

use Illuminate\Http\Request;
use Lareon\Modules\Product\App\Enums\ReleaseTypeEnum;
use Lareon\Modules\Product\App\Http\Controllers\Controller;
use Lareon\Modules\Product\App\Http\Resources\ProductCollection;
use Lareon\Modules\Product\App\Http\Resources\ProductResource;
use Lareon\Modules\Product\App\Models\Product;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $limit = $request->input('limit', 25); // یا default از config
        $properties = $request->input('properties', []); // array of property IDs
        $search = $request->input('search', null);

        $products = Product::with(['versions' => function($q) {
            $q->where('release_type', ReleaseTypeEnum::RELEASED->value)
                ->orderBy('published_at', 'desc');
        }])
            ->when(!empty($properties), fn ($q) => $q->whereHas('properties', function ($query) use ($properties) {
                $query->whereIn('property_id', $properties);
            }))
            ->when($search, fn ($q) => $q->where('title', 'like', "%{$search}%"))
            ->orderBy('created_at', 'desc')
            ->paginate($limit);

        return ProductCollection::make($products);
    }


    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        return ProductResource::make($product);
    }

}
