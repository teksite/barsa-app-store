<?php

namespace Lareon\Modules\Product\App\Http\Controllers\Web\Client\Products;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Lareon\Modules\Product\App\Enums\ReleaseTypeEnum;
use Lareon\Modules\Product\App\Http\Controllers\Controller;
use Lareon\Modules\Product\App\Models\Product;
use Lareon\Modules\Seo\App\Logic\SeoGeneratorLogic;

class ProductsController extends Controller
{
    public function __construct(public SeoGeneratorLogic $seo)
    {
    }

    public function index()
    {
        $page=Product::where('label','produc index')->first() ?? null;
        $seo = $page ? $this->seo->generate($page)->result : null;
        $products=Product::query()->with('categories',function ( $query){
            $query->select('title')->first();
        })->paginate(config('handler-settings.client-pagination' , 25));

        return view('pages.products.index',compact('seo' ,'page' ,'products'));
    }

    public function show(Product $product)
    {
        $seo =$this->seo->generate($product)->result;
        $version=$product->versions()->where('release_type',ReleaseTypeEnum::RELEASED->value)->orderBy('published_at' , 'desc')->first();
        return view('pages.products.show' ,compact('product' , 'seo' , 'version'));
    }
}
