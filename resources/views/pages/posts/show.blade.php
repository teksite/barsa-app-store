<x-client-layout :seo="$seo">
<x-slot name="editAddressPage">{{route('admin.blog.posts.edit',$post)}}</x-slot>

    <main class="inner-container py-12" role="main" itemscope itemtype="https://schema.org/Article">
        <article class="text mb-12">
            <header class="mb-6">
                <img src="{{$post->featured_image}}" itemprop="image"
                     alt="{{$post->title}}" width="900" height="600" class="mx-auto" decoding="sync"
                     fetchpriority="high" loading="lazy">
                <h1 itemprop="headline"
                    class="sr-only">{{$post->title}}</h1>

                <div class="grid md:grid-cols-2 gap-3 mt-6"
                     aria-label="{{__('Post meta information')}}">
                    <div class="flex items-center gap-3 p-3">
                        <i class="tkicon stroke-second_color" data-icon="user" aria-hidden="true"></i>
                        <span>
                           {{__('author')}}:
                           <span class="font-bold" itemprop="author" itemscope itemtype="https://schema.org/Person">
                               <span
                                   itemprop="name">{{$post->user->nickname ?? $post->user->name ?? __(config('app.name'))}}</span>
                           </span>
                      </span>
                    </div>
                    <div class="flex items-center gap-3 p-3">
                        <i class="tkicon stroke-second_color" data-icon="calender" aria-hidden="true"></i>
                        <span>
                           {{__('published at')}}:
                           <time class="font-bold" dir="ltr" datetime="{{$post->published_at ?? $post->created_at}}">
                               {{dateAdapter($post->published_at ?? $post->created_at)}}
                           </time>
                      </span>
                    </div>
                    <div class="flex items-center gap-3 p-3">
                        <i class="tkicon stroke-second_color" data-icon="book-opened" aria-hidden="true"></i>
                        {{__('categories')}}:
                        <span itemprop="articleSection">{{$post->categories->pluck('title')->implode(', ')}}</span>
                    </div>
                    <div class="flex items-center gap-3 p-3">
                        <i class="tkicon stroke-second_color" data-icon="tag" aria-hidden="true"></i>
                        {{__('tags')}}:
                        <span>{{ $post->tags->pluck('title')->implode(', ') }}</span>
                    </div>
                </div>
            </header>
            <div itemprop="articleBody">
                {!! $post->body !!}
            </div>
        </article>
        <x-comment.section :model="$post"/>
    </main>

</x-client-layout>
