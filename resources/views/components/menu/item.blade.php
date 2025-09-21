@props(['item' , 'childrenIcon'=>true])
@php($hasChildren = $item->children->count())

<a {{$item->url ? 'href='.$item->url :''}} role="{{$item->url ? 'link' : 'button'}}" @click="dropdownOpen = !dropdownOpen" class="flex items-center justify-between gap-3 select-none cursor-pointer hover:bg-slate-100 px-3 py-3 rounded-lg" @scroll.window="dropdownOpen = false">
    @if($item->pre_icon)
        <i class="tkicon stroke-current min-w-fit cursor-pointer" data-icon="{{$item->pre_icon}}" stroke-width="3" size="8"></i>
    @endif
    <div class="w-full">
       <span class="block text-sm uppercase">
            {{$item->title}}
       </span>
        @if($item->subtitle)
            <span class="menu-item_subtitle block text-xs">
                 {{$item->subtitle}}
            </span>
        @endif
    </div>
    @if($hasChildren && $childrenIcon)
    <i class="tkicon stroke-current min-w-fit" data-icon="{{is_rtl() ? 'angle-left' : 'angle-right'}}" stroke-width="3" size="8" :class="{ '{{is_rtl() ? '-rotate-90' :'rotate-90'}}' : dropdownOpen}"></i>
    @endif
</a>
