<x-client-layout :seo="$seo">
    <x-slot name="editAddressPage">{{ route('admin.services.edit', $service) }}</x-slot>

    {{-- Banner--}}
    <x-banner.herotic :title="$service->title" :image="$service->banner"/>

    <main id="main-content" class="py-12" role="main" aria-labelledby="service-title">
        <article class="prose lg:prose-lg" aria-labelledby="service-title {{$service->title}}" itemscope
                 itemtype="http://schema.org/Service">
            <div class="inner-container">
                <section class="mb-6 grid xl:grid-cols-2 gap-6 items-start">
                    <div class="self-center">
                        <h2 id="service-title" class="uppercase text-xl font-bold mb-0">
                            {{ __($service->title) }} {{__('at a glance')}}
                        </h2>
                        <span class="text-sm font-bold text-zinc-600 mb-3" aria-hidden="true">
                            {{ __(config('app.name')) }}
                        </span>
                        <div id="service-introduction" class="mb-6" aria-labelledby="service-intro-heading"
                             itemprop="description">
                            {{-- introduction--}}
                            {!! $service->introduction !!}
                        </div>
                    </div>
                    <div class="p-6 rounded-lg border border-zinc-950">
                        <img src="{!! $service->featured_image !!}"
                             alt="{{ $service->featured_image_alt ?? $service->title . ' - ' . __(config('app.name')) }}"
                             class="rounded w-full h-auto"
                             width="600" height="400"
                             loading="lazy" decoding="async" fetchpriority="low"
                             itemprop="image">
                    </div>
                </section>

                {{-- Read-more - explanation --}}
                <section aria-labelledby="details-heading">
                    <div x-data="{ show: false }"
                         x-init="$watch('show', value => { if(value){ $nextTick(()=>{ const el = $refs.longBody; if(el) el.focus(); }) } })">

                        <div class="text-center mb-3">
                            <x-button.outline
                                color="second"
                                @click="show = !show"
                                class="outline_link"
                                x-bind:title="show ? '{{ __('close') }}' : '{{ __('open') }}'"
                                x-bind:aria-expanded="show"
                                aria-controls="service-body"
                                aria-label="{{ __('toggle service description') }}">
                                <span
                                    x-text="show ? '{{ __('less') }}' : '{{ __('read more') }}'">{{ __('read more') }}</span>
                            </x-button.outline>
                        </div>

                        {{-- Collapsible content with minimal layout shift --}}
                        <div id="service-body"
                             x-show="show"
                             x-transition:enter="transition ease-out duration-200"
                             x-transition:enter-start="opacity-0 max-h-0"
                             x-transition:enter-end="opacity-100 max-h-screen"
                             x-transition:leave="transition ease-in duration-150"
                             x-transition:leave-start="opacity-100 max-h-screen"
                             x-transition:leave-end="opacity-0 max-h-0"
                             x-cloak
                             x-ref="longBody"
                             tabindex="-1"
                             role="region"
                             aria-label="{{ __('full service description') }}"
                             class="overflow-hidden">

                            <div class="prose max-w-none">
                                {!! $service->body !!}
                                <div class="mt-6">
                                    <h2>{{ __(":title features", ['title' => $service->title]) }}</h2>
                                    <p>{{ __('discover our unique features below and see how we can meet your needs') }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>


                {{-- Features --}}
                @if($service->features && count($service->features))
                    <section aria-labelledby="features-heading" class="my-24">
                        {{-- First feature special layout --}}
                        @foreach($service->features as $feature)
                            @if($loop->first)
                                <section
                                    class="border border-zinc-600 rounded-lg p-6 mb-6 grid gap-6 lg:grid-cols-2 items-center"
                                    role="group" aria-labelledby="feature-{{ $loop->index }}-title">
                                    <div>
                                        <h3 id="feature-{{ $loop->index }}-title"
                                            class="font-semibold">{{ $feature['title'] }}</h3>
                                        <p>{!!$feature['body']  !!}</p>
                                    </div>
                                    <div class="overflow-hidden">
                                        <img src="{{ $feature['image'] }}"
                                             alt="{{ $feature['image_alt'] ?? $feature['title'] . ' - ' . $service->title }}"
                                             width="400" height="200"
                                             loading="lazy" decoding="async" fetchpriority="low"
                                             class="rounded w-full h-auto mx-auto transition-all duration-150 ease-linear hover:scale-110">
                                    </div>
                                </section>
                            @else
                                {{-- Remaining features grouped in grid --}}
                                @if($loop->index === 1)
                                    <div class="mt-6 grid gap-6 lg:grid-cols-2 items-stretch" role="list"
                                         aria-label="{{ __('more features') }}">
                                        @endif
                                        <section role="listitem" class="border border-zinc-600 rounded-lg p-6 overflow-hidden">
                                            <h3 id="feature-{{ $loop->index }}-title"
                                                class="font-semibold">{{ $feature['title'] }}</h3>
                                            <p>{{ $feature['body'] }}</p>

                                            @switch($loop->index)
                                                @case(1)
                                                    <img src="{{ $feature['image'] }}"
                                                         alt="{{ $feature['title'] . ' - ' . $service->title }}"
                                                         width="400" height="300"
                                                         fetchpriority="low" loading="lazy" decoding="async"
                                                         class="w-full h-auto mx-auto mt-6 transition-all duration-150 ease-linear hover:scale-90">
                                                    @break
                                                @case(2)
                                                    <div class="border border-zinc-600 rounded-lg p-6 mt-6">
                                                        <div class="border border-zinc-600 rounded-lg p-6">
                                                            <img src="{{ $feature['image'] }}"
                                                                 alt="{{ $feature['title'] . ' - ' . $service->title }}"
                                                                 width="300" height="300" loading="lazy"
                                                                 decoding="async" fetchpriority="low"
                                                                 class="mx-auto transition-all duration-150 ease-linear hover:scale-110">
                                                        </div>
                                                    </div>
                                                    @break
                                                @default
                                                    <div class="border border-zinc-600 rounded-lg p-6 mt-6">
                                                    <img src="{{ $feature['image'] }}"
                                                         alt="{{ $feature['title'] }}"
                                                         width="400" height="300" loading="lazy" decoding="async"
                                                         fetchpriority="low"
                                                         class="w-full h-auto mx-auto mt-6">
                                                    </div>
                                            @endswitch
                                        </section>
                                        @if($loop->last)
                                    </div>
                                @endif
                            @endif
                        @endforeach
                    </section>
                @endif
            </div>
            {{-- Contact--}}
            <section aria-labelledby="contact-heading" class="py-24 bg-zinc-950 bg-semi-radia relative">
                <div class="w-11/12 mx-auto max-w-96">
                    <x-person-card :person="$service?->team ?? null"/>
                </div>
            </section>
            <div class="inner-container">
                {{-- Portfolios section --}}
                <section class="my-24" aria-labelledby="portfolio-heading">
                    <i class="mx-auto tkicon fill-none stroke-second_color mb-3" size="64" data-icon="creativeapp"
                       aria-hidden="true"></i>
                    <div class="mb-6 flex items-center justify-center gap-3">
                        <hr class="border-zinc-50 w-12">
                        <h2 id="portfolio-heading"
                            class="text-center mb-0 min-w-fit"> {{__(' some of our creative work')}} </h2>
                        <hr class="border-zinc-50 w-12">
                    </div>
                    <div class="overflow-hidden portfolio-list">
                        <ul class="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 2xl:grid-cols-4 gap-6 justify-evenly"
                            role="list" aria-label="{{ __('Portfolio items') }}">
                            @foreach($portfolios as $portfolio)
                                <li class="text-center p-3 rounded-lg border border-zinc-700 flex flex-col items-center hover:bg-black"
                                    role="listitem">
                                    <x-dynamic-component component="portfolio.{{$portfolio->type}}"
                                                         :instance="$portfolio"/>
                                    <span class="text font-semibold text-sm block mt-3">
                                        {{ __('by') }}:
                                        <a href="{{ $portfolio->user->path() }}" class="uppercase text-main_color"
                                           title="{{ __('view profile of :name', ['name' => $portfolio->user->name]) }}"
                                           aria-label="{{ __('view profile of :name', ['name' => $portfolio->user->name]) }}">
                                            {{ $portfolio->user->name }}
                                        </a>
                                    </span>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="text-center mt-12">
                        <x-link.solid href="{{ route('portfolios.index') }}" :value="__('View all works')"/>
                    </div>
                </section>
                <section class="py-24">
                    <div class="relative">
                        <img aria-hidden="true" alt="" role="presentation"
                             class="mx-auto opacity-30 background-dotted-mask -scale-100 w-full md:w-2/3 absolute -top-9 md:-top-6 lg:-top-16 xl:-top-32 inset-x-0"
                             src="{{ asset('storage/uploads/theme/dotted-background.png') }}"
                             srcset="{{ asset('storage/uploads/theme/dotted-background-s.png') }} 200w,
                                 {{ asset('storage/uploads/theme/dotted-background-t.png') }} 400w,
                                 {{ asset('storage/uploads/theme/dotted-background.png') }} 600w"
                             sizes="(max-width: 400px) 200px, (max-width: 768px) 400px, 600px"
                             width="600" height="283" loading="lazy" decoding="async" fetchpriority="low"
                             aria-label="{{ __('Decorative dotted background') }}"/>
                        <div class="text-center mb-12">
                            <i class="tkicon fill-none stroke-second_color mx-auto" size="64" data-icon="crown"
                               aria-hidden="true"></i>
                            <h2 class="h2 block text-center capitalize">{{ __('turning ideas into visual stories') }}</h2>
                            <q class="text block">{{ __('simplicity is the result of subtle craftsmanship. – Anonymous') }}</q>
                        </div>
                    </div>

                    {{-- Callouts --}}
                    @if($service->callouts && count($service->callouts))
                        <section aria-labelledby="callouts-heading"
                                 class="grid gap-6 md:grid-cols-2 xl:grid-cols-3 my-24">
                            @foreach($service->callouts as $callout)
                                <section
                                    class="hover:bg-zinc-950 border border-zinc-600 rounded-lg p-3 {{ $loop->iteration % 3 === 0 ? 'md:col-span-2 xl:col-span-1' : '' }}"
                                    aria-labelledby="callout-{{ $loop->index }}-title">
                                    @isset($callout['title'])
                                        <h3 id="callout-{{ $loop->index }}-title"
                                            class="text-lg font-semibold">{{ $callout['title'] }}</h3>
                                    @endisset

                                    @isset($callout['body'])
                                        <p class="text">{{ $callout['body'] }}</p>
                                    @endisset

                                    @isset($callout['image'])
                                        <div class="bg-zinc-950 p-1 rounded mt-3" role="img"
                                             aria-label="{{ $callout['title'] ?? $service->title }}">
                                            @if(str_ends_with($callout['image'], 'svg'))
                                                {{-- SVGs: keep object but add accessible title --}}
                                                <object data="{{ $callout['image'] }}" type="image/svg+xml"
                                                        title="{{ $callout['title'] ?? $service->title }}" width="600"
                                                        height="100" class="w-full mx-auto"></object>
                                            @else
                                                <img src="{{ $callout['image'] }}"
                                                     alt="{{ $callout['title'] ?? $service->title }}" width="600"
                                                     height="100" loading="lazy" decoding="async" fetchpriority="low"
                                                     class="w-full mx-auto"/>
                                            @endif
                                        </div>
                                    @endisset

                                    @if(!empty($callout['link']))
                                        <div class="mt-3">
                                            <a href="{{ $callout['link'] }}" class="inline-block underline"
                                               aria-label="{{ __('Learn more about :title', ['title' => $callout['title'] ?? $service->title]) }}">
                                                {{ __('Learn more') }}
                                            </a>
                                        </div>
                                    @endif
                                </section>
                            @endforeach

                            {{-- CTA card inside callouts --}}
                            <div class="md:col-span-2 xl:col-span-1 border border-zinc-600 rounded-lg p-3">
                                <h3>{{ __('Have questions?') }}</h3>
                                <p>{{ __('Connect with us easily via the Contact Us page and start using our services') }}</p>
                                <x-link.outline :value="__('contact us')" href="/contact"
                                                class="mt-2 inline-block text-sm"/>
                            </div>
                        </section>
                    @endif
                </section>

            </div>
            <section class="py-24 w-11/12 mx-auto">
                <x-sliders.services :items="\Lareon\Modules\Service\App\Models\Service::all()"/>
            </section>
        </article>
    </main>
</x-client-layout>
