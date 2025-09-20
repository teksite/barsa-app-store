@props(['title', 'excerpt'=>null, 'image'=>null])
@php
    $imageSmall = $image ? preg_replace('/(\.[a-zA-Z0-9]+)$/', '-s$1', $image) : null;
@endphp

<header class="mb-6 bg-cover bg-no-repeat bg-herotic" role="banner">
    <div class="inner-container h-96 flex items-center">
        <div class="grid gap-6 md:grid-cols-2 m-auto w-full">
            <div>
                <h1 itemprop="name" class="uppercase text-4xl">{{ $title }}</h1>
                @if($excerpt)
                    <p itemprop="description">{{ $excerpt }}</p>
                @endif
            </div>
        </div>
    </div>

    @if($image)
        @push('headerScripts')
            <style>
                .bg-herotic {
                    background-image: url('{{$imageSmall}}');
                }

                @media (min-width: 1024px) {
                    .bg-herotic {
                        background-image: url('{{ asset($image) }}');
                    }
                }
            </style>
        @endpush
    @endif

    <x-banner.herotic-statics/>
</header>
