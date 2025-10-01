<?php

namespace Lareon\Modules\Menu\App\Http\Controllers\Api\Clinet\Menus;

use Illuminate\Http\Request;
use Lareon\Modules\Menu\App\Http\Controllers\Controller;
use Lareon\Modules\Menu\App\Models\Menu;

class MenusController extends Controller
{
    public function show(Menu $menu)
    {

        $items=\Lareon\Modules\Menu\App\Models\MenuItem::query()->orderBy('position')->where('menu_id',$menu->id)->where('parent_id' , null)->orWhere('parent_id' , 0)->get();

        return response()->json([
            'data'=>$items
        ]);
    }
}
