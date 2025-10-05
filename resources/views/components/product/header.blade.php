@props(['product'])

<header class="py-6 bg-radial-[at_85%_0%] rad  to-70% to-transparent" id="productHeader">
    <section class="inner-container border-b border-zinc-600 py-6">
        <figure class="flex items-center gap-3">
            <img src="{{$product->featured_image ?? '/storage/uploads/products/default.jpg'}}" alt="{{$product->title}}" class="rounded-xl" width="100"
                 id="productImage"
                 height="100" decoding="async" loading="lazy" fetchpriority="high">
            <figcaption class="flex flex-col gap-3 justify-center">
                <h1 class="mb-0">
                    {{$product->title}}
                </h1>

                @if($product->owner?->url)
                    <a href="{{$product->owner?->url}}" rel="external"
                       class="text-main_color hover:text-main_color_alt font-semibold">
                        {{$product->owner->title}}
                    </a>
                @else
                    <span
                        class="text-main_color hover:text-main_color_alt font-semibold">
                            {{$product->owner->title}}
                        </span>
                @endif
            </figcaption>
        </figure>
        @if($product->excerpt)
            <p class="mt-3">
                {{$product->excerpt}}
            </p>
        @endif

        <ul class="space-y-3 mt-6">
            @foreach($product->groupedProperties() as $group=>$properties)
                <li class="flex items-center gap-3">
                    <span class="font-bold">{{$group}}</span>
                    <ul class="flex items-center gap-1 text">
                        @foreach($properties as $property)
                            <li class="bg-slate-300 text-slate-600 rounded-xl px-3 py-1 select-none">
                                {{$property->title}}
                            </li>
                        @endforeach
                    </ul>
                </li>
            @endforeach
        </ul>


        <div class="flex items-center gap-1 mt-3 ">
            @if($product->recommend_type == \Lareon\Modules\Product\App\Enums\RecommendTypeEnum::OFFICIAL)
                <i class="tkicon fill-green-600 stroke-none" data-icon="star"></i>
                <p class="mb-0 text-green-600 font-bold">
                    {{__('the official barsa novin ray software')}}
                </p>
            @elseif($product->recommend_type == \Lareon\Modules\Product\App\Enums\RecommendTypeEnum::CONFIRMED)
                <i class="tkicon fill-blue-600 stroke-none" data-icon="star"></i>
                <p class="mb-0 text-blue-600 font-bold">
                    {{__('confirmed by barsa novin ray')}}
                </p>
            @else
                <i class="tkicon stroke-yellow-600" data-icon="star"></i>

            @endif
        </div>
    </section>

</header>
