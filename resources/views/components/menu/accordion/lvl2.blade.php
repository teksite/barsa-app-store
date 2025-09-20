@props(['items'=>[]])
<ul class="text space-y-3">
    @foreach($items as $item)
        <li class="relative"  aria-controls="item__{{$item->id}}">
            <span class="">
                {{$item->title}}
            </span>
            <x-menu.accordion.lvl2 :items="$item"/>
        </li>
    @endforeach
</ul>
