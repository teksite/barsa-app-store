@props([
  'person'=>null ,
  'title'=>__('need guidance') ,
  'description'=>__('speak directly with our expert to get personalized advice')
])

<x-box.inner-glow class="z-10">
    <div {{$attributes->merge(['class'=>"group overflow-hidden"])}}>
        @if($title)
            <h2 class="text-center">
                {{__($title)}}
            </h2>
        @endif
        @if($description)
            <p class="text-center font-semibold text-sm" itemprop="description">
                {{$description}}
            </p>
        @endif
        <div class="text-center">
            <figure class="mb-3 mt-6">
                <img
                    class="rounded-full mx-auto md:translate-y-9  md:scale-125 group-hover:translate-y-0 group-hover:scale-100 transition-all duration-150 delay-75 ease-linear"
                    src="{{$person?->featured_image ?? '/storage/logo/logo-200.png' }}"
                    alt="{{$person?->name ?? __(config('app.name'))}}"
                    width="200" height="200" decoding="async" fetchpriority="low" loading="lazy"
                    itemprop="image">
                <figcaption
                    class="text-center text mt-3 uppercase font-bold md:translate-y-[200px]  group-hover:translate-y-0 transition-all duration-150 delay-75 ease-linear"
                    itemprop="name">
                    {{$person?->name ?? __(config('app.name'))}}
                </figcaption>
            </figure>
            <nav
                class="md:translate-y-[200px] group-hover:translate-y-0 transition-all duration-150 delay-75 ease-linear">
                <ul class="flex items-stretch justify-center gap-3" role="list">
                    @foreach(['whatsapp' , 'telegram' ,'linkedin' , 'email' , 'phone' ,'url'] as $link)
                        @if($person?->$link)
                            <li role="listitem">
                                <a href="{{$link === 'email' ? 'matilto:':($link==='phone'?'tel:':'')}}{{$person?->$link}}" rel="nofollow" target="_blank"
                                   class="bg-zinc-800 hover:bg-zinc-950  rounded-full text-zinc-50 p-3 flex items-center justify-center w-fit aspect-square"
                                   aria-label="{{ __(':link of :name', ['link'=>ucfirst($link), 'name'=>$person?->name]) }}">
                                    <i class="tkicon fill-none stroke-current" data-icon="{{$link}}" aria-hidden="true"></i>
                                </a>
                            </li>
                        @endif
                    @endforeach
                    @if(is_null($person))
                        <li class="text-center" role="listitem">
                            <a href="{{url('/contact')}}" rel="nofollow"
                               class="bg-zinc-800 hover:bg-zinc-950  rounded-full text-zinc-50 p-3 flex items-center justify-center w-fit aspect-square"
                               aria-label="{{__('contact us page')}}">
                                <i class="tkicon fill-none stroke-current" data-icon="link" aria-hidden="true"></i>
                            </a>
                    @endif
                </ul>
            </nav>
        </div>
    </div>
</x-box.inner-glow>
