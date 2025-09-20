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
                    {{__('blending creativity and functionality, we deliver solutions that truly represent your brand')}}
                    .
                </p>
            </div>
        </div>
        <picture class="absolute inset-0 mx-auto md:w-2/3 -z-10">
            <source srcset="{{asset('/storage/uploads/pages/bg-moon.png')}}" width="1366" height="617"
                    media="(min-width: 820px)">
            <source srcset="{{asset('/storage/uploads/pages/bg-moon-400-400.png')}}" width="400" height="400"
                    media="(max-width: 720px)">
            <img src="{{asset('/storage/uploads/theme/pages/bg-moon.png')}}" alt="{{__(config('app.name'))}}"
                 loading="lazy" fetchpriority="high" decoding="sync" class="w-full h-auto">
        </picture>
    </header>
    <main class="py-12 ">
        <div id="page-content min-h-screen inner-container" class="homePage">
            <picture>
                <source srcset="{{asset('/storage/uploads/pages/overview.jpg')}}" width="1016" height="857"
                        media="(min-width: 820px)">
                <source srcset="{{asset('/storage/uploads/pages/overview-400.jpg')}}" width="400" height="400"
                        media="(max-width: 720px)">
                <img src="{{asset('/storage/uploads/pages/overview.jpg')}}" alt="نمای کلی لاراتک" width=""
                     loading="lazy" fetchpriority="low" decoding="async" class="mx-auto my-6">

            </picture>
            <div class="inner-container my-24">
                <section class="grid lg:grid-cols-2 gap-6 mb-12 items-center">
                    <div>
                        <div class="text-reveal-from-top">
                            <h2 class="capitalize text-zinc-600">
                                {{__('graphic design')}}
                            </h2>
                            <p class="mb-6">
                                {{__('at Laratek, we create visually stunning graphic solutions that bring your brand to
                                life. From logos, business sets, brochures, banners, to display stands and more, every
                                design is crafted with creativity, precision, and attention to detail—ensuring your
                                message stands out and leaves a lasting impression')}}.
                            </p>
                        </div>
                        <x-link.outline :value="__('web design page')" :href="url('/services/graphic-design')"/>
                    </div>
                    <div>
                        <div class="rounded-xl p-6 border border-zinc-950">
                            <img src="{{asset('/storage/uploads/services/graphic-featured_image.jpg')}}"
                                 alt="{{__('web design as :site' ,['site',__(config('app.name'))])}}" width="600"
                                 height="400" class="mx-auto w-full rounded-lg" fetchpriority="low" decoding="async"
                                 loading="lazy">
                        </div>
                    </div>
                </section>
                <section class="grid lg:grid-cols-2 gap-6 items-center">
                    <div class="order-2 lg:order-1">
                        <div class="rounded-xl p-6 border border-zinc-950">
                            <img src="{{asset('/storage/uploads/services/website-featured_image.jpg')}}"
                                 alt="{{__('web design as :site' ,['site',__(config('app.name'))])}}" width="600"
                                 height="400" class="mx-auto w-full rounded-lg" fetchpriority="low" decoding="async"
                                 loading="lazy">
                        </div>
                    </div>
                    <div class="order-1 lg:order-2">
                      <div class=" text-reveal-from-top">
                          <h2 class="capitalize text-zinc-600">
                              {{__('web design and develop')}}
                          </h2>
                          <p class="mb-6">
                              {{__('at Laratek, we specialize in fully custom website solutions tailored to your business needs. Whether it’s a visually captivating site, a complex web application, or a unique interactive platform, we combine creativity, functionality, and user-focused design to deliver websites that truly represent your brand and engage your audience')}}
                              .
                          </p>
                      </div>
                        <x-link.outline :value="__('web design page')" :href="url('/services/web-design')"/>
                    </div>

                </section>
            </div>
        </div>
        {{--Portfolios--}}
        <section class="bg-black py-24">
            <i class="mx-auto tkicon fill-none stroke-second_color mb-3" size="64" data-icon="creativeapp"
               aria-hidden="true"></i>
            <h2 class="text-center">
                {{__('what we have done')}}
            </h2>
            <div class="inner-container">
                <div class="flex items-center justify-center gap-6">
                    <button role="button" class="portfolioSwiper-swiper-button-next swiper-button-next text-zinc-50">
                        <i class="mx-auto tkicon fill-none stroke-second_color mb-3" size="24"
                           data-icon="arrow-left"></i>

                    </button>
                    <button role="button" class="portfolioSwiper-swiper-button-prev swiper-button-prev   text-zinc-50">
                        <i class="mx-auto tkicon fill-none stroke-second_color mb-3" size="24"
                           data-icon="arrow-right"></i>
                    </button>
                </div>
                <div class="swiper portfolioSwiper !py-24">
                    <ul class="swiper-wrapper">
                        @foreach($portfolios as $portfolio)
                            <li class="swiper-slide">
                                <dev class="overflow-hidden group">
                                    <figure class="relative overflow-hidden">
                                        <img src="{{$portfolio->featured_image}}"
                                             alt="{{$portfolio->title}} {{config('app.name')}}" width="300" height="200"
                                             loading="lazy" decoding="async" fetchpriority="low"
                                             class="mx-auto rounded-lg">
                                        <figcaption
                                            class="md:translate-y-96 group-hover:translate-y-0 duration-300 transition-all absolute h-1/3 bottom-0 inset-x-0 w-full bg-gradient-to-t from-30% from-zinc-950/90  via-80% via-zinc-950/50   to-90% to-transparent">
                                            <ul class="space-y-1 text p-3 text-sm detail-item">
                                                <li>
                                                    {{$portfolio->title}}
                                                </li>
                                                <li>
                                                    {{$portfolio->user_name}}
                                                </li>

                                            </ul>
                                        </figcaption>
                                        <span
                                            class="span px-3 py-1 text-sm font-semibold absolute top-1/4 start-0 bg-second_color_alt text-zinc-50 rounded-e-xl shadow">
                                                {{$portfolio->group_title}}
                                            </span>
                                    </figure>
                                </dev>
                            </li>
                        @endforeach

                    </ul>
                </div>
                <div class="text-center">
                    <x-link.solid color="main" :value="__('see all our works')" :href="route('portfolios.index')"/>
                </div>

            </div>
        </section>

        {{--Testimonials--}}
        <section class="py-24">
            <i class="mx-auto tkicon fill-none stroke-second_color mb-3" size="64" data-icon="quote-end"
               aria-hidden="true"></i>
            <h2 class="text-center">
                {{__('your satisfaction is uur best advertisement')}}
            </h2>
            <p class="text-center">
                {{__('happy clients naturally share their experience—and that’s the best promotion for us')}}.
            </p>
            <div class="inner-container grid xl:grid-cols-2 gap-6 items-center mt-12">
                <div class="text-reveal-from-left">
                    <p>
                        {{__('our clients have shared their experiences with us to show how our services and projects have met their needs and expectations')}}
                        .
                    </p>
                    <p>
                        {{__('each testimonial reflects our quality, precision, and commitment, helping you build greater confidence in choosing our team')}}
                        .
                    </p>
                    <p>
                        {{__('here, you can find some of the valuable feedback from our clients')}}.
                    </p>
                </div>
                <div class="x-box flex flex-col md:flex-row items-center gap-3">
                    <div class="testimonialSwiper-swiper-pagination min-w-fit w-fit  flex md:flex-col gap-1"></div>
                    <div class="swiper testimonialSwiper w-full h-[200px] md:h-[100px]">
                        <ul class="swiper-wrapper w-full">
                            @foreach($testimonials as $testimonial)
                                <li class="swiper-slide w-full">
                                    <div class="flex flex-col md:flex-row gap-3 items-center  w-full">
                                        <img src="{{$testimonial->featured_image}}" alt="{{$testimonial->name}}"
                                             width="100" height="100" class="rounded-full" fetchpriority="low"
                                             loading="lazy" decoding="async">
                                        <div class="w-full">
                                            <blockquote class="text">
                                                {{$testimonial->description}}
                                                <footer class="text-end mt-1">
                                                    <i class="italic font-semibold">{{$testimonial->name}}</i>
                                                </footer>
                                            </blockquote>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        {{--Services--}}
        <section class="py-24 w-11/12 mx-auto">
            <x-sliders.services :items="\Lareon\Modules\Service\App\Models\Service::all()"/>
        </section>
        {{--Skills--}}
        <section class="py-24 w-11/12 mx-auto inner-container">
            <h2 class="text-center">
                {{{__('our teams capabilities')}}}
            </h2>
            <x-skills.grid :items="\Lareon\Modules\Skill\App\Models\Skill::all()"/>
        </section>

    </main>
</x-client-layout>
