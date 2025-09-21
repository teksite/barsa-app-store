<?php

namespace Lareon\Modules\Theme\App\Http\Controllers\Web\Client\Pages;

use App\Jobs\ResizeImageJob;
use Illuminate\Http\Request;
use Lareon\Modules\Craft\App\Models\Portfolio;
use Lareon\Modules\Page\App\Models\Page;
use Lareon\Modules\Product\App\Models\Product;
use Lareon\Modules\Seo\App\Logic\SeoGeneratorLogic;
use Lareon\Modules\Tag\App\Models\Tag;
use Lareon\Modules\Testimonial\App\Models\Testimonial;
use Lareon\Modules\Theme\App\Http\Controllers\Controller;
use Lareon\Modules\Theme\App\Logic\SearchLogic;

class StaticPagesController extends Controller
{
    public function __construct(public SeoGeneratorLogic $seo)
    {
    }

    public function home()
    {
        $page = Page::where('label', 'home page')->first() ?? null;
        $seo = $page ? $this?->seo?->generate($page)->result : null;
        //Todo Cache data of products in homepage
        $products=Product::query()->inRandomOrder()->limit(6)->get();

        return view('pages.home', compact('seo', 'page','products'));
    }

    public function search(Request $request)
    {

        $page = Page::where('label', 'search page')->first() ?? null;
        $seo = $page ? $this?->seo?->generate($page)->result : null;

        $s = $request->has('s') ? $request->input('s') : null;
         $items = $s ? (new SearchLogic())->search($s)->result : [];

        return view('pages.search', compact('seo', 'page' ,'items'));
    }
}
