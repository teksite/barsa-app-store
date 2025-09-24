<?php

namespace Lareon\Modules\Product\App\Http\Controllers\Web\Client\Products;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Lareon\Modules\Page\App\Models\Page;
use Lareon\Modules\Product\App\Enums\RecommendTypeEnum;
use Lareon\Modules\Product\App\Enums\ReleaseTypeEnum;
use Lareon\Modules\Product\App\Http\Controllers\Controller;
use Lareon\Modules\Product\App\Models\Group;
use Lareon\Modules\Product\App\Models\Product;
use Lareon\Modules\Seo\App\Logic\SeoGeneratorLogic;

class ProductsController extends Controller
{
    public function __construct(public SeoGeneratorLogic $seo)
    {
    }

    public function index(Request $request)
    {

        $page = Page::where('label', 'products index')->first() ?? null;
        $seo = $page ? $this->seo->generate($page)->result : null;
        $products = Product::query()
            ->when(request()->has('p'), function (Builder $query) use ($request) {
                $query->whereHas('properties', function (Builder $q) use ($request) {
                    $q->where('title', 'like', '%' . $request->get('p') . '%');
                });
            })->when(request()->has('t'), function (Builder $query) use ($request) {
                $query->whereHas('tags', function (Builder $q) use ($request) {
                    $q->where('title', 'like', '%' . $request->get('t') . '%');
                })->orWhere('title', 'like', '%' . $request->get('t') . '%');
            })->when(request()->has('r'), function (Builder $query) use ($request) {
                $r = match ($request->get('r')) {
                    'confirmed' => RecommendTypeEnum::CONFIRMED->value,
                    'official' => RecommendTypeEnum::OFFICIAL->value,
                    'none' => RecommendTypeEnum::NONE->value,
                    default=>null,
                };
                return $query->where('recommend_type', $r);
            })
            ->orderBy('created_at', 'desc')
            ->paginate(config('handler-settings.client-pagination', 25));
        $groups = Group::query()->orderBy('title')->with('properties')->get();

        return view('pages.products.index', compact('seo', 'page', 'products', 'groups'));
    }

    public function show(Product $product)
    {
        $seo = $this->seo->generate($product)->result;
        $version = $product->versions()->where('release_type', ReleaseTypeEnum::RELEASED->value)->orderBy('published_at', 'desc')->first();
        return view('pages.products.show', compact('product', 'seo', 'version'));
    }
}
