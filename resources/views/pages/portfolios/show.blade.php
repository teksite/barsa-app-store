<x-client-layout :seo="$seo">
<x-banner.herotic :title="$service->title"/>
    <main class="py-12 ">
        <div class="inner-container">
            {{--excerpt--}}
            <section>
                <div class="grid gap-6 lg:grid-cols-2 items-center mb-6">
                    <div>
                        {!! $service->introduction !!}
                    </div>
                    <div>
                        <img src=" {!! $service->featured_image !!}"
                             alt="{{$service->title}}"
                             width="600" height="400" loading="lazy" decoding="async" fetchpriority="low">
                    </div>
                </div>
                <div x-data="{show:false}">
                    <div class="" x-show="show" x-cloak id="introduction" x-bind:aria-hidden="!show">
                        {!! $service->body !!}
                    </div>
                    <div class="text-center">
                        <x-button.outline color="second" @click="show=!show" class="outline_link"
                                          x-bind:title="show ? '{{__('close')}}' : '{{__('open')}}'"
                                          x-bind:aria-expanded="show" aria-controls="introduction"
                                          aria-label="{{__('Toggle replies section')}}"
                                          x-text="show ? '{{__('less')}}' : '{{__('read more')}}'">
                            {{__('read more')}}
                        </x-button.outline>
                    </div>
                </div>
            </section>

            {{--features--}}
            @if(count($service->features))
                <div class="my-24">
                    @foreach($service->features as $feature)
                        @if($loop->first)
                            <section
                                class="border border-zinc-600 rounded-lg p-6 mb-6 grid gap-6 lg:grid-cols-2 items-center">
                                <div>
                                    <h3>{{ $feature['title'] }}</h3>
                                    <p>{{ $feature['body'] }}</p>
                                </div>
                                <div>
                                    <img src="{{ $feature['image'] }}" alt="{{ $feature['title'] }}"
                                         width="400" height="200" loading="lazy" decoding="async" fetchpriority="low"
                                         class="w-full h-auto mx-auto  transition-all duration-150 ease-linear hover:scale-110">
                                </div>
                            </section>
                        @else
                            @if($loop->first === false && $loop->index === 1)
                                <div class="mt-6 grid gap-6 lg:grid-cols-2 items-stretch">
                                    @endif

                                    @switch($loop->index)
                                        @case(1)
                                            <section class="border border-zinc-600 rounded-lg p-6">
                                                <h3>{{ $feature['title'] }}</h3>
                                                <p>{{ $feature['body'] }}</p>
                                                <img src="{{ $feature['image'] }}" alt="{{ $feature['title'] }}"
                                                     width="400" height="300" loading="lazy" decoding="async"
                                                     fetchpriority="low"
                                                     class="w-full h-auto mx-auto mt-6  transition-all duration-150 ease-linear hover:scale-90">
                                            </section>
                                            @break

                                        @case(2)
                                            <section class="border border-zinc-600 rounded-lg p-6">
                                                <h3>{{ $feature['title'] }}</h3>
                                                <p>{{ $feature['body'] }}</p>
                                                <div class="border border-zinc-600 rounded-lg p-6 mt-6">
                                                    <div class="border border-zinc-600 rounded-lg p-6">
                                                        <img src="{{ $feature['image'] }}" alt="{{ $feature['title'] }}"
                                                             width="300" height="300" loading="lazy" decoding="async"
                                                             fetchpriority="low"
                                                             class="mx-auto  transition-all duration-150 ease-linear hover:scale-110">
                                                    </div>
                                                </div>
                                            </section>
                                            @break

                                        @default
                                            <section class="border border-zinc-600 rounded-lg p-6">
                                                <h3>{{ $feature['title'] }}</h3>
                                                <p>{{ $feature['body'] }}</p>
                                                <img src="{{ $feature['image'] }}" alt="{{ $feature['title'] }}"
                                                     width="400" height="300" loading="lazy" decoding="async"
                                                     fetchpriority="low"
                                                     class="w-full h-auto mx-auto mt-6">
                                            </section>
                                    @endswitch

                                    @if($loop->last)
                                </div>
                            @endif
                        @endif
                    @endforeach
                </div>
            @endif
        </div>

        {{--Contact--}}
        <div class="py-24 bg-zinc-950 bg-semi-radia relative">
            <div class="w-11/12 mx-auto max-w-96">
                @if($service->contact && isset($service->contact['name']))
                    <x-person-card :person="$service->contact"/>
                @else
                @endif
            </div>
        </div>
        <div class="inner-container">
            {{--portfolios--}}
            <section class="my-24">
                <h2 class="text-center">
                    Some of our creative work
                </h2>
                <div class="overflow-hidden portfolio-list">
                    <ul class="grid grid-cols-2 md:grid-cols-3 gap-6 relative ">
                        @foreach($service->randomPortfolios(9) as $portfolio)
                            <li class="p-3 rounded-lg border border-zinc-700 relative">
                                <figure class="text-center relative p-1">
                                    <span class="bg-black/50 inset-0 absolute rounded"></span>
                                    <img src="{{$portfolio->featured_image}}" alt="{{$portfolio->title}}" width="450"
                                         height="300" fetchpriority="low" decoding="async" loading="lazy"
                                         class="mx-auto">
                                    <figcaption class="text text-center font-bold text-sm mt-6 relative z-10">
                                        {{$portfolio->title}}
                                    </figcaption>
                                </figure>
                            </li>
                        @endforeach

                    </ul>
                    <div class="shine-overlay absolute inset-0 pointer-events-none"></div>
                </div>

                <x-link.solid class="mx-auto inline-block text-center mt-6" href="#" :value="__('view all works')"/>
            </section>

            <div>
                <i class="tkicon fill-none stroke-second_color mx-auto" size="64" data-icon="crown"></i>
                <span class="h2 block text-center">
                {{__('Turning Ideas Into Visual Stories')}}
            </span>
                <q class="text-center text block">
                    Simplicity is the result of subtle craftsmanship. – Anonymous
                </q>
            </div>
            {{--callouts--}}
            @if($service->callouts && count($service->callouts))
                <section class="grid gap-6 md:grid-cols-2 xl:grid-cols-3 my-24">
                    @foreach($service->callouts as $callout)
                        <div
                            class="hover:bg-zinc-950 border border-zinc-600 rounded-lg p-3 {{$loop->iteration % 3 ===0 ?'md:col-span-2 xl:col-span-1 ' :''}}">
                            @isset($callout['title'])
                                <h3>
                                    {{$callout['title']}}
                                </h3>
                            @endisset
                            @isset($callout['body'])
                                <p class="text">
                                    {{$callout['body']}}
                                </p>
                            @endisset
                            @isset($callout['image'])
                                <div class="bg-zinc-950 p-1 rounded">
                                    @if(str_ends_with($callout['image'],"svg")  )
                                        <object data="{{$callout['image']}}" type="image/svg+xml"
                                                title="{{$callout['title'] ?? $service->title}}" width="600"
                                                height="100"
                                                class="w-full mx-auto"></object>
                                    @else
                                        <img src="{{$callout['image']}}" alt="{{$callout['title'] ?? $service->title}}"
                                             width="600" height="100" loading="lazy" decoding="async"
                                             fetchpriority="low"
                                             class="w-full mx-auto">
                                    @endif
                                </div>
                            @endisset
                        </div>
                    @endforeach
                    <div class="md:col-span-2 xl:col-span-1 border border-zinc-600 rounded-lg p-3">
                        <h2>
                            {{__(' Have questions?')}}
                        </h2>
                        <p>
                            {{__(' Connect with us easily via the Contact Us page and start using our services')}}
                        </p>
                        <x-link.outline :value="__('contact us')" href="/contact" class="mt- inline-block text-sm"/>
                    </div>
                </section>
            @endif
        </div>
    </main>
</x-client-layout>
