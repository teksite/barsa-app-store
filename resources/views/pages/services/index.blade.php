<x-client-layout :seo="$seo">
<main class="inner-container py-12">
        <div class="mb-12">
            <h1>
                {{__($page->title)}}
            </h1>
            {!! $page?->body !!}
        </div>

        <ul class="grid gap-12 sm:grid-cols-2 xl:grid-cols-3 2xl:grid-cols-4">
            @forelse($services as $service)
                <li>
                    <article>
                        <x-box.simple class="text-center hover:border-zinc-300 hover:border ">
                            <img src="{{$service->featured_image ?? '' }}" alt="{{$service->title}}" width="600" height="400"
                                 fetchpriority="low" decoding="async" loading="lazy"
                                 class="-translate-y-12 rounded-2xl shadow-lg shadow-zinc-950">
                            <h3>
                                <a href="{{$service->path()}}">
                                    {{$service->title}}
                                </a>
                            </h3>
                        </x-box.simple>
                    </article>
                </li>
            @empty
                <li>{{__('no item has been found')}}</li>.
            @endforelse

        </ul>
        {{$services->appends($_GET)->links()}}

    </main>
</x-client-layout>
