@props(['items'=>[]])
<ul class="flex items-center gap-6 text-zinc-50">
    @foreach($items as $item)
        <li class="relative" x-data="{ dropdownOpen: false }" aria-controls="item__{{$item->id}}" :aria-expanded="dropdownOpen" @click.away="dropdownOpen=false">
            <x-menu.item :item="$item"/>
            <x-menu.simple.load :items="$item->children"  x-bind:class="dropdownOpen ? 'visible' : 'invisible'" id="item__{{$item->id}}" aria-labelledby="item__{{$item->id}}"/>
        </li>
    @endforeach
</ul>
