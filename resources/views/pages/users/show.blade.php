<x-client-layout :seo="$seo">
<x-slot name="editAddressPage">{{route('admin.users.edit',$user)}}</x-slot>

    <header class="pt-24 pb-24 lg:pb-0 flex items-center border-b border-zinc-600 relative overflow-hidden"
            role="banner">
        <div class="absolute bottom-0 end-0 w-1/2 h-full bg-black z-0 triangle_clip-left" aria-hidden="true"></div>
        <div class="absolute bottom-0 start-0 w-3/4 h-full bg-zinc-950 z-0 triangle_clip-right"
             aria-hidden="true"></div>
        <div class="grid gap-6 lg:grid-cols-2 inner-container relative z-10">
            <div>
                <span class="h3 block mb-1">
                    {{__('hello, I am')}}
                </span>
                <h1 itemprop="name" class="uppercase">{{$user->name}}</h1>
                @isset($general['about']['value'] , $general['about']['active'] )
                    <div class=" text-reveal-from-top">
                        <p itemprop="description">
                            {!! $general['about']['value'] !!}
                        </p>
                    </div>
                @endisset
                <nav aria-label="{{__('social links')}}">
                    <ul class="flex items-center justify-start gap-3 text-zinc-50">
                        @foreach($social as $key => $data)
                            @if(isset($data['active']) && isset($key))
                                <li>
                                    <a href="{{$key === 'email' ? 'matilto:':($key==='phone'?'tel:':'')}}{{ $data['value'] }}" title="{{__($key)}}"
                                       aria-label="{{__('visit :name profile', ['name'=>$key])}}"
                                       class="p-3 rounded-full flex items-center justify-center w-fit aspect-square bg-zinc-800 hover:bg-main_color_alt"
                                       rel="nofollow">
                                        <i class="tkicon" size="20" data-icon="{{ $key }}"
                                           aria-hidden="true"></i>
                                    </a>
                                </li>
                            @endif
                        @endforeach
                    </ul>
                </nav>
            </div>

            <div class="relative">
                <span class="translate-x-1/4 z-0  absolute top-1/4 left-0 right-0 h-1 bg-amber-300"></span>
                <span
                    class="translate-x-1/4 z-20 absolute top-1/4 left-0 w-full h-1 bg-amber-300 rotate-60 origin-left"></span>
                <span
                    class="translate-x-1/4 z-20 absolute top-1/4 right-0 w-full h-1 bg-amber-300  -rotate-60 origin-right"></span>

                <img src="{{$user->featured_image}}" alt="{{$user->name}}" width="400" height="400"
                     loading="lazy" itemprop="image"
                     fetchpriority="high" decoding="sync" class="me-0 ms-auto bg-blend-darken relative z-10">
            </div>
        </div>
    </header>

    <main class="pt-12" role="main">
        <div class="inner-container" itemscope itemtype="https://schema.org/Person">
            <i class="tkicon fill-none stroke-second_color mx-auto mb-6" size="64" data-icon="skill-art"
               aria-hidden="true"></i>
            <div class="flex gap-3 items-center justify-center mx-auto">
                <hr class="border-zinc-50 w-12">
                <h2 class="capitalize text text-center block h2 min-w-fit mb-0">
                    {{__('what I can do for you')}}
                </h2>
                <hr class="border-zinc-50 w-12">
            </div>

            <section class="my-12 lg:inline-flex items-center gap-6 w-full xl:w-3/4 ">
                <div class="mb-6 min-w-fit">
                    <span title="{{__('portfolios count')}}" class="text-5xl font-bold block text-main_color">
                       +{{count($user->portfolios)}}
                    </span>
                    <h3 class="mb-0 capitalize">
                        {{__('creative works')}}
                    </h3>
                </div>

                <div>
                    <h3 class="mb-0">
                        {{__('my skills')}}
                    </h3>
                    <hr class="border-zinc-50 my-3">
                    <ul class="flex flex-wrap items-center justify-start gap-3">
                        @foreach($user->skills as $skill)
                            <li>
                                <figure
                                    class="flex items-center gap-1 select-none border rounded-2xl border-amber-100 px-3 py-1 hover:bg-amber-100 hover:text-zinc-950 text-zinc-50 font-semibold text-sm capitalize">
                                    <img src="{{$skill->logo}}" alt="{{$skill->title}}" width="25" height="25"
                                         decoding="async"
                                         fetchpriority="low" loading="lazy">
                                    <figcaption>
                                        {{$skill->title}}
                                    </figcaption>
                                </figure>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </section>

            @if(count($portfolios ?? []))
                <x-portfolio.gallery-more :portfolios="$portfolios ?? []" :user="$user->id"/>
            @endif

            <section class="py-24">
                <h2 class="capitalize text-center">
                    {{__('the values I bring to every project')}}
                </h2>
                <x-box.simple>

                    <div class="grid gap-6 lg:grid-cols-2">
                        <div>
                            @if(isset($images['image_1']['value'], $images['image_1']['active'] ))

                                <img src="{{asset($images['image_1']['value'])}}" alt="{{$user->name}}" width="400"
                                     height="600"
                                     loading="lazy"
                                     fetchpriority="high" decoding="sync" class="mx-auto bg-blend-darken "
                                     itemprop="image">

                            @else

                                <img src="{{asset('/storage/uploads/users/general-2.png')}}" alt="{{$user->name}}" width="400"
                                     height="600"
                                     loading="lazy"
                                     fetchpriority="high" decoding="sync" class="mx-auto bg-blend-darken "
                                     itemprop="image">
                            @endif
                        </div>
                        <div>
                            <canvas id="personEager"></canvas>
                        </div>
                    </div>
                </x-box.simple>
            </section>
        </div>
        <div class="bg-black">
            <section class="py-24 mt-24 lg:w-2/3 mx-auto ">
                <img src="{{asset('/storage/uploads/team/team.png')}}" alt="{{config('app.name') . ' ' . "team"}}" width="400" height="400"
                     loading="lazy"
                     fetchpriority="high" decoding="sync" class="mx-auto bg-blend-darken " itemprop="image">
                <x-box.inner-glow>
                    <div class="group overflow-hidden">
                        <h2 class="text-center capitalize">
                            {{__('other ways to get in touch')}}
                        </h2>
                        <p class="text-center font-semibold text-sm">
                            {{__('you can also reach me through the contact page for more options')}}
                        </p>
                    </div>
                    <div class="text-center mt-12">
                        <x-link.outline href="{{url('/contact')}}"
                                        :value="__('contact :title' ,['title'=>__(config('app.name'))])"/>
                    </div>
                </x-box.inner-glow>
            </section>
        </div>

    </main>
</x-client-layout>
