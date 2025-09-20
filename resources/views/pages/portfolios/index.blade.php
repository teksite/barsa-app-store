<x-client-layout :seo="$seo">
<main class="inner-container py-12" role="main">
        <section aria-labelledby="portfolio-heading">
            <div class="mb-12">
                <h1 id="portfolio-heading">{{ __('portfolios') }}</h1>
            </div>
            <div class="grid gap-6 xl:grid-cols-5 items-start">
                <aside class="space-y-3">
                    <section class="x-box" aria-label="{{ __('portfolio categories') }}">
                        <h3>{{ __('categories') }}</h3>
                        <ul class="gap-6 flex flex-wrap xl:flex-col" role="list">
                            <li class="indicator-box {{ request()->get('group') === null ? 'active' : '' }}">
                                <a href="{{ route('portfolios.index', request()->except('group')) }}"
                                   class="px-3 py-1 rounded light-link block">
                                    {{ __('all') }}
                                </a>
                            </li>
                            @foreach($groups as $group)
                                @php
                                    $isActive = request()->get('group') === $group->title;
                                    $url = route('portfolios.index', array_merge(request()->except('group'), ['group' => $group->title]));
                                @endphp
                                <li class="indicator-box {{ $isActive ? 'active' : '' }}">
                                    <a href="{{ $url }}" class="px-3 py-1 rounded light-link block">
                                        {{ $group->title }}
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                    </section>

                    <section class="x-box" aria-label="{{ __('portfolio authors') }}">
                        <h3>{{ __('authors') }}</h3>
                        <ul class="gap-6 flex flex-wrap xl:flex-col" role="list">
                            <li class="indicator-box {{ request()->get('author') === null ? 'active' : '' }}">
                                <a href="{{ route('portfolios.index', request()->except('author')) }}"
                                   class="px-3 py-1 rounded light-link block">
                                    {{ __('all') }}
                                </a>
                            </li>
                            @foreach($authors as $author)
                                @php
                                    $isActive = request()->get('author') === $author->name;
                                    $url = route('portfolios.index', array_merge(request()->except('author'), ['author' => $author->name]));
                                @endphp
                                <li class="indicator-box {{ $isActive ? 'active' : '' }}">
                                    <a href="{{ $url }}" class="px-3 py-1 rounded light-link block">
                                        {{ $author->name }}
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                    </section>
                </aside>
                <div class="xl:col-span-4">
                   @if($portfolios->count())
                        <x-portfolio.gallery :portfolios="$portfolios" :enableAuthor="true"/>
                       {{$portfolios->appends($_GET)->links()}}
                    @else
                       <p>
                           {{__('no items has been found')}}.
                       </p>
                    @endif
                </div>
            </div>
        </section>


    </main>
</x-client-layout>
