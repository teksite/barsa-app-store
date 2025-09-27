<x-client-layout :seo="$seo">
    <x-slot name="editAddressPage">{{route('admin.pages.edit',$page)}}</x-slot>
    <header class="py-12">
        <div class="text-center mb-12">
            <div class="relative inline-block mx-auto w-fit">
                <div
                    class="absolute border-t-3 border-r-3 border-main_color -top-5 -right-5 w-8 h-8 rounded-tr-lg animate-fade-out"></div>
                <div
                    class="absolute border-b-3 border-l-3 border-main_color -bottom-5 -left-5 w-8 h-8 rounded-bl-lg animate-fade-out"></div>
                <h1 class="text-5xl text-center uppercase">
                    <span class="text-main_color">barsa</span>
                    <span>novin ray</span>
                </h1>
                <span class="block h3 text-center">{{__('barsa store')}}</span>
                <p class="text-center mb-0 capitalize">
                    {{$page->excerpt}}
                </p>
            </div>
        </div>
    </header>
    <main class="py-12 ">
        <section class="inner-container">
            <h2 class="text-center">
                {{__('lastest software')}}
            </h2>
            <ul class="grid gap-6 sm:grid-cols-2 md:grid-cols-3 mt-12">
                @foreach($products as $product)
                    <li>
                        <x-box.simple>
                            <a href="{{$product->path()}}">
                                <figure>
                                    <img src="{{asset($product->featured_image)}}" alt="{{$product->title}}" class="rounded-lg mb-3" decoding="async" fetchpriority="low" loading="lazy" width="100" height="100">
                                    <figcaption>
                                        <h3>
                                            {{$product->title}}
                                        </h3>
                                    </figcaption>
                                    <p>
                                        {{$product->excerpt}}
                                    </p>
                                </figure>
                            </a>
                        </x-box.simple>
                    </li>

                @endforeach
            </ul>
            <div class="text-center mt-6">
                <a href="{{route('products.index')}}" class="text-sm link">
                    {{__('see more software')}}
                </a>
            </div>
        </section>

    </main>
</x-client-layout>
