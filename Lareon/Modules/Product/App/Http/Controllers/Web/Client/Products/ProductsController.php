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
use Lareon\Modules\Product\App\Models\Property;
use Lareon\Modules\Seo\App\Logic\SeoGeneratorLogic;

class ProductsController extends Controller
{
    public function __construct(public SeoGeneratorLogic $seo)
    {
    }

    public function index(Request $request)
    {
        $page = Page::where('label', 'products index')->first();
        $seo = $page ? $this->seo->generate($page)->result : null;

        $properties = $request->input('p', []);
        $titleSearch = $request->input('t');

        $products = Product::query()
            ->when($properties, fn ($q) => $this->searchInProperties($q, $properties))
            ->when($titleSearch, function ($q) use ($titleSearch) {
                $q->orWhere('title', 'like', "%{$titleSearch}%");
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


    private function searchInProperties(Builder $query, array $properties = [])
    {
        $groupedProperties = Property::whereIn('title', $properties)
            ->get(['group_id','id','title'])
            ->groupBy('group_id');

        foreach ($groupedProperties as $groupId => $props) {
            $prs=$props->pluck('title')->toArray();
            $query->whereHas('properties', function (Builder $q) use ($prs) {
                $q->whereIn('title', $prs);
            });
        }

        return $query;
    }

}
