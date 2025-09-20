<div {{$attributes->merge(['class'=>'pt-2 relative mx-auto text-gray-600'])}}>
    <search>
        <form action="{{route('search')}}" method="GET" class="searchForm" role="search">
            <input class="border border-zinc-600 bg-natural h-10 pe-3 ps-8 rounded-lg text-sm focus:outline-none w-full text" type="search" name="s" placeholder="{{__('search')}} ..." aria-label="{{__('search')}}">
            <button type="submit" class="absolute right-0 top-0 mt-5 me-4" aria-label="{{__('search')}}">
                <i class="tkicon stroke-zinc-200 fill-none" data-icon="magnifier" size="18"></i>
            </button>
        </form>
    </search>
</div>
