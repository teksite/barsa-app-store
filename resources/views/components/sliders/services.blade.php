@props(['items'=>[]])
<div>
    <div class="flex items-center gap-6">
        <h2>
            {{__('our services')}}
        </h2>
        <div class="flex items-center justify-start gap-6">
            <button role="button" class="serviceSwiper-swiper-button-next swiper-button-next text-zinc-50">
                <i class="mx-auto tkicon fill-none stroke-second_color mb-3" size="24"
                   data-icon="angle-left"></i>

            </button>
            <button role="button" class="serviceSwiper-swiper-button-prev swiper-button-prev   text-zinc-50">
                <i class="mx-auto tkicon fill-none stroke-second_color mb-3" size="24"
                   data-icon="angle-right"></i>
            </button>
        </div>
    </div>
    <div class="swiper serviceSwiper">
        <div class="swiper-wrapper">
            @foreach($items ?? [] as $service)
                <div class="swiper-slide">
                    <div class="p-6 rounded-xl border border-zinc-900 group ">
                        <figure class=" p-3 group-hover:bg-black w-fit">
                            <img src="{{$service->featured_image}}" class="mb-6" alt="{{$service->title}}" width="300"
                                 height="200" fetchpriority="low" loading="lazy" decoding="async">
                            <figcaption>
                                <a href="{{$service->path()}}" class="light-link ">
                                    {{$service->title}}
                                </a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
            @endforeach
        </div>
    </div>

</div>
