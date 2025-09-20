<?php

namespace Lareon\Modules\Theme\App\Http\Controllers\Web\Client\Users;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Lareon\CMS\App\Logic\UserLogic;
use Lareon\CMS\App\Logic\UserMetaLogic;
use Lareon\CMS\App\Models\User;
use Lareon\Modules\Seo\App\Logic\SeoGeneratorLogic;
use Lareon\Modules\Theme\App\Http\Controllers\Controller;
use Teksite\Handler\Actions\ServiceWrapper;
use Teksite\Handler\Services\FetchDataService;

class UsersController extends Controller
{
    public function __construct(public UserMetaLogic $metaLogic , public SeoGeneratorLogic $seo)
    {
    }
    public function show(User $user)
    {
        $meta=$this->metaLogic->get($user ,['social','images' ,'general'] ,'value')->result;
        $social=$meta['social'] ?? [];
        $images=$meta['images'] ?? [];
        $general=$meta['general'] ?? [];

        $portfolios=$user->portfolios()->select(['id','featured_image' ,'title'])->limit(15)->get() ?? [];
        $seo = (new SeoGeneratorLogic())->generate($user)->result;

        return View::first(["pages.users.templates.$user->template", 'pages.users.show'], compact('user' , 'social' ,'images' ,'general','portfolios' ,'seo'));
    }
}
