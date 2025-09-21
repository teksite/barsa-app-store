@props(['items'=>[]])
@if(count($items))
    <ul {{$attributes->merge(['class'=>'absolute z-10 top-12 min-w-xs bg-white/95 rounded-lg backdrop-blur-2xl border border-zinc-300 px-3 py-3 space-y-3 invisible'])}}>
        @foreach($items as $item)
            <li class="relative group">
                <x-menu.item :item="$item"/>
                <x-menu.simple.sub id="item__{{$item->id}}" aria-labelledby="item__{{$item->id}}" :items="$item->children"/>
            </li>
        @endforeach
    </ul>
@endif
