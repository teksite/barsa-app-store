<x-client-layout :seo="$seo">
<main class="inner-container py-12" role="main">
        <div class="mb-12">
            <h1 itemprop="headline">{{ __($page->title) }}</h1>
            <div itemprop="description">
                {!! $page?->body !!}
            </div>
        </div>

        <ul class="grid gap-12 sm:grid-cols-2 xl:grid-cols-3 2xl:grid-cols-4" aria-label="{{ __(' blog posts list') }}">
            @forelse($posts as $post)
                <li>
                    <article itemscope itemtype="https://schema.org/Article">
                        <x-box.simple class="text-center hover:border-zinc-300 hover:border ">
                            <img src="{{$post->featured_image ?? '' }}"
                                 alt="{{$post->title}}"
                                 width="600" height="400"
                                 fetchpriority="low" decoding="async" loading="lazy"
                                 class="-translate-y-12 rounded-2xl shadow-lg shadow-zinc-950"
                                 itemprop="image">

                            <h3 itemprop="headline">
                                <a href="{{$post->path()}}">
                                    {{$post->title}}
                                </a>
                            </h3>

                            <hr class="border-zinc-950 my-3">

                            <div class="flex items-center justify-between">
                                <span class="text text-sm" itemprop="articleSection">
                                    {{$post->categories->first()->title ?? ''}}
                                </span>

                                <a href="{{$post->path()}}" class="text-main_color flex items-center gap-2 text-sm" stroke-width="2" aria-label="{{ __('visit post: :title', ['title' => $post->title]) }}">
                                    {{__('visit this post')}}
                                    <i class="tkicon stroke-current" data-icon="{{is_rtl() ? 'arrow-left' : 'arrow-right' }}" size="14" aria-hidden="true"></i>
                                </a>
                            </div>
                            <meta itemprop="author" content="{{$post->user->nickname ?? $post->user->name ?? config('app.name')}}">
                            <meta itemprop="datePublished" content="{{ ($post->published_at ?? $post->created_at)->toIso8601String() }}">
                        </x-box.simple>
                    </article>
                </li>
            @empty
                <li>{{__('no item has been found')}}</li>
            @endforelse
        </ul>

        {{$posts->appends($_GET)->links()}}
    </main>

</x-client-layout>
