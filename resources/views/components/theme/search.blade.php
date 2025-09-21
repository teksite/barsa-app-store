<div {{$attributes->merge(['class'=>'py-1 relative mx-auto text-gray-600'])}}>
    <search>
        <form action="{{route('search')}}" method="GET" class="searchForm" role="search">
            <input class="border border-zinc-300 bg-natural h-10 pe-3 ps-8 rounded-lg text-sm focus:outline-none w-full text" type="search" name="s" placeholder="{{__('search')}} ..." aria-label="{{__('search')}}">
            <button type="submit" class="absolute right-0 top-0 mt-4 ms-2" aria-label="{{__('search')}}">
                <i class="tkicon stroke-zinc-600 fill-none" data-icon="magnifier" size="18"></i>
            </button>
        </form>
    </search>
</div>
