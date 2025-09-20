<?php

namespace Lareon\Modules\Page\App\Http\Controllers\Web\Client\Pages;

use Illuminate\Support\Facades\View;
use Lareon\Modules\Page\App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Lareon\Modules\Page\App\Models\Page;
use Lareon\Modules\Seo\App\Logic\SeoGeneratorLogic;

class PagesController extends Controller
{

    public function show(Page $page)
    {
        $seo = (new SeoGeneratorLogic())->generate($page)->result;
        return View::first(["pages.pages.templates.$page->template", 'pages.pages.show'], compact('page'  ,'seo'));
    }
}
