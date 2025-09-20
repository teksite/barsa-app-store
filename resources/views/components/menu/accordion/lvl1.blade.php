@props(['items'=>[]])

<ul class="space-y-3 text" role="menu">
    @foreach($items as $item)
        <li class="relative" x-data="{ open: false }" role="none">
            @if($item->url)
                <a
                    href="{{$item->url}}"
                    class="block px-4 py-2 hover:bg-zinc-800 rounded"
                    role="menuitem"
                >
                    {{$item->title}}
                </a>
            @else
                <button
                    @click="open = !open"
                    class="w-full text-left px-4 py-2 hover:bg-zinc-800 rounded flex justify-between items-center"
                    aria-expanded="false"
                    :aria-expanded="open.toString()"
                    aria-controls="submenu-{{$item->id}}"
                    role="menuitem"
                >
                    <span>{{$item->title}}</span>
                    <svg x-show="!open" class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                    </svg>
                    <svg x-show="open" class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 15l7-7 7 7"></path>
                    </svg>
                </button>

                <ul
                    x-show="open"
                    x-transition
                    id="submenu-{{$item->id}}"
                    class="mt-2 ml-4 border-l border-zinc-600 pl-4 space-y-2"
                    role="menu"
                >
                    @if(isset($item->children) && count($item->children))
                        @foreach($item->children as $child)
                            <li role="none">
                                <a
                                    href="{{$child->url ?? '#'}}"
                                    class="block px-2 py-1 hover:bg-zinc-800 rounded"
                                    role="menuitem"
                                >
                                    {{$child->title}}
                                </a>
                            </li>
                        @endforeach
                    @else
                        <li class="text-gray-500 px-2 py-1" role="none">No items</li>
                    @endif
                </ul>
            @endif
        </li>
    @endforeach
</ul>
