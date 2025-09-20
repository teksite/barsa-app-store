<x-client-layout :seo="$seo">
    @php
        $achievements = [
    __('more than 50  clients'),
    __('more than 150 successful projects'),
    __('more than 10 years of experience'),
    __('more than 50 positive feedback'),
];
        $testimonials=\Lareon\Modules\Testimonial\App\Models\Testimonial::query()->inRandomOrder()->limit(9)->get();
    @endphp
    <x-slot name="editAddressPage">{{route('admin.pages.edit',$page)}}</x-slot>
    <main id="page-content" class="about-page">
        <section class="inner-container pb-12 pt-12 min-h-screen-1/2 content-center">
            <div class="grid items-center lg:grid-cols-2 xl:grid-cols-3 xl:grid-rows-3 gap-x-12 gap-y-6 ">
                <div class="lg:col-span-1 lg:row-span-1 xl:col-span-2">
                    <div>
                        <h1 class="text-sm mb-1">{{$page->title}}</h1>
                        <h2>
                            <span class="text-main_color">{{__(config('app.name'))}}</span>
                            {{__('at a glance')}}
                        </h2>
                    </div>
                    <p>
                        {!! __('at :site, we create designs that are simple, functional, and visually appealing. We care
                         deeply about user experience, attention to detail — ensuring every project is
                         both aesthetically strong and technically reliable. Our expertise lies in web development and
                         graphic design with a modern, minimalist approach focused on real user needs',['site'=>'<dfn>'.__(config('app.name')).'</dfn>']) !!}
                        .
                    </p>
                </div>
                <div class="lg:col-span-1 lg:row-span-1 xl:row-span-2 xl:col-start-3">
                    <div class="w-1/2 lg:w-full mx-auto">
                        <img src="{{asset('/storage/uploads/pages/logo-animation.svg')}}" class="mx-auto"
                             type="image/svg+xml"
                             alt="{{__(config('app.name'))}}" height="600" width="300" loading="lazy" decoding="async"
                             fetchpriority="high">
                    </div>
                </div>
                <div class="lg:col-span-1 lg:row-span-1 xl:row-span-2 xl:row-start-2 h-full">
                    <div class="border border-primary-100 rounded p-3 relative w-full aspect-square">
                        <img src="{{asset('/storage/uploads/pages/about_services.jpg')}}"
                             alt="{{__('services')}} {{__(config('app.name'))}}" width="500" height="355" loading="lazy"
                             fetchpriority="low" decoding="async"
                             class="shadow-lg shadow-black xl:absolute w-full h-auto top-3 -left-3 rounded">
                    </div>
                </div>
                <div class="lg:col-span-1 lg:row-span-1 xl:row-span-2 xl:row-start-2">
                    <span class="h3">
                        {{__('with you, by your side')}}
                    </span>
                    <p class="mt-6">
                        {{__(':site provides a unified platform through a range of graphic and web design services, enabling clients to meet most of their needs in one place',['site'=>__(config('app.name'))])}}
                    </p>
                    <div class="p text-2xl mt-12">
                        <div class="flex">
                            <span class="w-full text-center"><span class="text-3xl">24</span> / 7</span>
                            <span class="w-full text-center"><span class="text-3xl">A</span>+</span>
                        </div>
                        <div class="w-full h-0.25 bg-radial from-second_color to-zinc-300 relative my-6">
                            <span class="absolute flex h-2 w-2 start-1/4 -top-1.5">
                                <span
                                    class="animate-ping absolute inline-flex h-full w-full rounded-full bg-second_color opacity-75"></span>
                                     <span class="relative inline-flex rounded-full h-2 w-2 bg-second_color"></span>
                            </span>
                            <span class="absolute flex h-2 w-2 end-1/4 -top-1.5">
                                <span
                                    class="animate-ping absolute inline-flex h-full w-full rounded-full bg-second_color opacity-75"></span>
                                <span class="relative inline-flex rounded-full h-2 w-2 bg-second_color"></span>
                           </span>
                        </div>
                        <div class="flex">
                            <span class="w-full text-center">{{__('support')}}</span>
                            <span class="w-full text-center">{{__('quality')}}</span>
                        </div>
                    </div>
                </div>
                <div class="lg:col-span-1 lg:row-span-1 xl:col-start-3 xl:row-start-3">
                    <div
                        class="rounded-full w-1/2 mx-auto aspect-square overflow-hidden flex items-center justify-center border border-zinc-950 p-3 ">
                        <div
                            class="text flex items-center justify-center gap-1 flex-col  w-full h-full font-bold border border-zinc-950 p-3 rounded-full">
                            <span class="text-5xl ">+{{Carbon\Carbon::now()->year - 2014}}</span>
                            <span class="text-xl">{{__('years')}}</span>
                            <span class="text-xl">{{__('experience')}}</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class=" min-h-screen-1/2 content-center">
            <section class="inner-container grid gap-12 lg:grid-cols-2 mb-12 py-24">
                <div>
                    <div class="mb-6 flex items-center gap-3">
                        <i class="tkicon" data-icon="circle-three" size="32"></i>
                        <h2 class="mb-0">
                            {{__('why')}} {{__(config('app.name'))}}
                        </h2>
                    </div>
                    @php
                        $reasons=[
                           [
                               "title"=>__("needs assessment"),
                               "description"=>__('before starting any project, :site thoroughly assesses your needs and business goals, and provides us with a comprehensive solution',['site'=>__(config('app.name'))]),
                               "value"=>"90",
                               "value_prefix"=>"%",

                         ], [
                               "title"=>__("expert team"),
                               "description"=>__('our team at Laratek combines creativity, technical expertise, and experience to deliver solutions that truly make a difference for your business'),
                               "value"=>"100",
                               "value_prefix"=>"%",

                         ],
                           [
                               "title"=>__("price guarantee"),
                               "description"=>__('at :site, you get outstanding quality at a highly competitive price',['site'=>__(config('app.name'))]),
                               "value"=>"100",
                               "value_prefix"=>"%",

                         ],
                        ]
                    @endphp
                    <ul class="mb-12 space-y-6">
                        @foreach($reasons as $reason)
                            <li>
                                <div class="flex items-center justify-start gap-6 p">
                                    <div
                                        class="counterNumber inline-flex w-24 h-24 items-center justify-center rounded-full p-6 aspect-square text-xl font-bold border-b border-second_color"
                                        data-count-start="0" data-count-end="100" data-count-speed="5000">
                                        <span dir="ltr">{{$reason['value_prefix']}}<span
                                                class="count">{{$reason['value']}}</span></span>
                                    </div>
                                    <div class="w-full">
                                        <h4>{{$reason['title']}}</h4>
                                        <p class="text-sm">
                                            {{$reason['description']}}
                                        </p>
                                    </div>
                                </div>
                            </li>
                        @endforeach
                    </ul>
                </div>
                <x-box.inner-glow>
                    <div class="h-full flex flex-col justify-between">
                        <div>
                            <div class="relative inline-block">
                                <h3 class="h2 mb-6 inline-block">
                                    {{__('plan smart with a free pre-project consultation')}}
                                </h3>
                                <span class="absolute bottom-1/3  start-1/3 end-0 w-1/3">
                                    <img src="{{asset('/storage/uploads/theme/underline.svg')}}" alt="underline"
                                         type="image/svg" fetchpriority="low" decoding="async" loading="lazy">
                                </span>
                            </div>
                            <p class="mb-6">
                                {{__('one of :site key services is free consultation. this service isn’t limited to existing clients; anyone, whether an individual or an organization, looking to start or expand their online presence in Laratek’s areas of expertise is welcome to reach out and benefit from it' ,['site'=>__(config('app.name'))])}}
                                .
                            </p>
                        </div>
                        <div>
                            <hr class="border-zinc-600 my-6">
                            <p>
                                {{__('for more information about our free consultation service')}},
                                <br>
                                {{__('click the button below and contact us')}}.
                            </p>
                            <div class="flex items-center justify-end mt-6">
                                <x-link.outline :href="url('contact')"
                                                class="inline-flex items-center gap-3 justify-center group stroke-current text-sm font-semibold">
                                    {{__('talk to us')}}
                                    <i class="tkicon fill-none {{is_rtl() ?'group-hover:-rotate-90' :'group-hover:rotate-90'}} transition-all"
                                       data-icon="angle-up"
                                       size="14" stroke-width="2"></i>
                                </x-link.outline>
                            </div>
                        </div>
                    </div>
                </x-box.inner-glow>
            </section>
            <section class="py-24 bg-zinc-950">
                <div class="inner-container">
                    <i class="tkicon fill-none mx-auto stroke-second_color" size="64" data-icon="laurel-wreath-1"></i>

                    <h3 class="text-center h2">
                        {{__('our achievement')}}
                    </h3>
                    <p class="text-zinc-200/50 text-center">
                        {{__('during cooperation with you')}}
                    </p>
                    <p class="text-center">
                        {{__('over the years, Laratek has proudly partnered with numerous clients, delivering high-quality projects backed by our extensive experience and consistently earning positive feedback')}}.
                    </p>
                    <div class="text-center">
                        <x-sliders.semicircle :items="$achievements"/>
                    </div>
                </div>
            </section>
            <section class="inner-container pb-24 pt-24 ">
                <i class="mx-auto tkicon fill-none stroke-second_color mb-3" size="64" data-icon="quote-end"
                   aria-hidden="true"></i>
                <h3 class="text-center">
                    {{__('our client feedback')}}
                </h3>
                <div class="inner-container">
                    <div class="swiper feedbackSwiper relative x-box ">
                        <ul class="swiper-wrapper">
                            @foreach($testimonials as $testimonial)
                                <li class="swiper-slide p-6">
                                    <div class="text-center">
                                        <figure class="mb-6">
                                            <img src="{{$testimonial->featured_image}}" alt="{{$testimonial->name}}" loading="lazy" fetchpriority="low" decoding="async" width="50" height="50"
                                                 class="rounded-full border border-zinc-600 mx-auto mb-3">
                                            <figcaption class="text-center text font-bold">
                                                {{$testimonial->name}}
                                            </figcaption>
                                        </figure>
                                        <blockquote class="text-center text">
                                            {{$testimonial->description}}
                                        </blockquote>
                                    </div>
                                </li>
                            @endforeach

                        </ul>
                            <button role="button" class="absolute top-1/2 start-0 -translate-y-1/2 z-10 feedbackSwiper-swiper-button-next swiper-button-next text-zinc-50">
                                <i class="mx-auto tkicon fill-none stroke-second_color mb-3" size="24"
                                   data-icon="angle-left"></i>

                            </button>
                            <button role="button" class="absolute top-1/2 end-0 -translate-y-1/2 z-10 feedbackSwiper-swiper-button-prev swiper-button-prev   text-zinc-50">
                                <i class="mx-auto tkicon fill-none stroke-second_color mb-3" size="24"
                                   data-icon="angle-right"></i>
                            </button>

                    </div>
                    <div class="feedbackSwiper-swiper-pagination mx-auto text-center mt-6"></div>

                </div>
            </section>
        </div>
        <section class="relative">
            <video src="{{asset('/storage/uploads/videos/teams_video.mp4')}}" autoplay loop muted class="mx-auto"></video>
            <div class="absolute inset-0 bg-black/75 content-center text-center">
                <div class="mb-6">
                    <h2>
                        {{__('the Minds Behind Our Success')}}
                    </h2>
                    <p>
                        {{__('our strength lies in the people who work together. Meet the team that makes it all possible')}}
                    </p>
                </div>
                <x-link.outline :href="url('/team')"
                                class="inline-flex items-center gap-3 justify-center group stroke-current text-sm font-semibold !rounded-full aspect-square">
                    {{__('out team')}}
                    <i class="tkicon fill-none {{is_rtl() ?'group-hover:-rotate-90' :'group-hover:rotate-90'}} transition-all"
                       data-icon="angle-up" size="14" stroke-width="2"></i>
                </x-link.outline>
            </div>
        </section>

    </main>
</x-client-layout>
