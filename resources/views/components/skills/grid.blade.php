@props(['items'=>[]])
@if(count($items))
    <ul class="grid gap-3 grid-cols-3 sm:grid-cols-4 md:grid-cols-5 lg:grid-cols-6">
    @foreach($items as $skill)
        <li>
            <div class="x-box group card-reveal">
                <figure class=" duration-75 transition-all ease-linear">
                    <img src="{{$skill->logo}}" alt="{{$skill->title}}" class="mx-auto mb-1 grayscale-100 group-hover:grayscale-0" width="50" height="50" fetchpriority="low" decoding="async" loading="lazy" >
                    <figcaption class="text-center uppercase text-zinc-600 group-hover:text-zinc-50 font-bold">
                        {{$skill->title}}
                    </figcaption>
                </figure>
            </div>
        </li>
    @endforeach
    </ul>
@endif
