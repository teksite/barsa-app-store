@props(['items'=>[]])
@if(count($items))
    <ul {{$attributes->merge(['class'=>'absolute z-10 top-12 min-w-xs bg-zinc-900 rounded-lg border border-zinc-950 px-3 py-3 space-y-6 invisible'])}}>
        @foreach($items as $item)
            <li class="relative group">
                <x-menu.item :item="$item"/>
                <x-menu.simple.sub id="item__{{$item->id}}" aria-labelledby="item__{{$item->id}}" :items="$item->children"/>
            </li>
        @endforeach
    </ul>
@endif
