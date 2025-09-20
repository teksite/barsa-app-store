<x-client-layout :seo="$seo">
    <x-slot name="editAddressPage">{{route('admin.pages.edit',$page)}}</x-slot>
    <header class="py-12">
        <div class="text-center mb-12">
            <div class="relative inline-block mx-auto w-fit">
                <div
                    class="absolute border-t-3 border-r-3 border-main_color -top-5 -right-5 w-8 h-8 rounded-tr-lg animate-fade-out"></div>
                <div
                    class="absolute border-b-3 border-l-3 border-main_color -bottom-5 -left-5 w-8 h-8 rounded-bl-lg animate-fade-out"></div>
                <h1 class="text-5xl text-center">
                    <span class="text-main_color">LARA</span>TEK
                </h1>
                <p class="text-center mb-0 capitalize">
                    {{__('search in laratek website')}}.
                </p>
            </div>
        </div>
    </header>
    <main class="py-12 inner-container">
        <form action="{{route('search')}}" method="get">
            <div>
                <x-input.label :title="__('search what you want')" class="mb-3" for="searchInput"/>
                <div class="flex items-stretch">
                    <x-input.text id="searchInput" name="s" class="w-full block" type="text"
                                  placehoder="{{__('search')}}..." :value="request()->s"/>
                    <x-button.outline class="w-fit min-w-fit" color="blue">{{__('search')}}</x-button.outline>
                </div>
            </div>
        </form>

        @if(request()->s)
            <hr class="border-zinc-600 my-6">
            @if(count([$items]))
                <ul class="grid sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-5">
                    @foreach($items as $item)
                        <li>
                            <x-box.simple>
                                <div class="text-center">
                                    @if($item->featured_image)
                                        <a href="{{$item->path()}}" class="block mb-6">
                                            <img src="{{$item->featured_image}}" alt="{{$item->title ?? $item->name}}"
                                                 width="300" height="200" fetchpriority="low" decoding="async"
                                                 loading="lazy">
                                        </a>
                                    @endif

                                    <a href="{{$item->path()}}" class="">
                                        {{$item->title ?? $item->name}}
                                    </a>
                                </div>
                            </x-box.simple>
                        </li>
                    @endforeach
                </ul>
                <div class="my-6">
                    {{$items->appends($_GET)->links()}}
                </div>
            @else
                <p>
                    {{__('nothing has been found. try another word to search')}}.
                </p>
            @endif
        @endif

    </main>
</x-client-layout>
