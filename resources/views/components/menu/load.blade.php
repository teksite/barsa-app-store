@props(['menu'])
@php
$menu=\Lareon\Modules\Menu\App\Models\Menu::query()->firstWhere('label' , $menu);
$items=\Lareon\Modules\Menu\App\Models\MenuItem::query()->orderBy('position')->where('menu_id',$menu->id)->where('parent_id' , null)->orWhere('parent_id' , 0)->get();
@endphp
<x-menu.lvl1 :items="$items"/>
