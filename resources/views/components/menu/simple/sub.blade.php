@props(['items'=>[]])
@if(count($items))
    <ul class='absolute z-20 end-auto start-11/12 top-0 min-w-xs bg-zinc-900 rounded-lg border border-zinc-950 px-6 py-3 space-y-6 invisible group-hover:visible'>
        @foreach($items as $item)
            <li class="relative">
                <x-menu.item :item="$item"/>
                <x-menu.simple.sub :items="$item->children"  id="item__{{$item->id}}" aria-labelledby="item__{{$item->id}}"/>
            </li>
        @endforeach
    </ul>
@endif
