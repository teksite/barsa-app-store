<x-client-layout :seo="$seo">
    <x-slot name="editAddressPage">{{route('admin.products.edit',$product)}}</x-slot>
    <main class="py-12 ">
        <div class="inner-container">
            <div>
                <figure class="flex items-center gap-3">
                    <img src="{{$product->featured_image}}" alt="{{$product->title}}" class="rounded-xl" width="100"
                         height="100" decoding="async" loading="lazy" fetchpriority="high">
                    <figcaption>
                        <h1>
                            {{$product->title}}
                        </h1>
                        <a href="{{$product->user()->path()}}">
                            {{$product->user()->name}}
                        </a>
                    </figcaption>
                </figure>
            </div>
            <aside>

            </aside>
        </div>

    </main>
</x-client-layout>
