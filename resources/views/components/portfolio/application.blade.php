@props(['instance'=>null])
<div>
    <div
        class="graphic-sample-item bg-imac-frame bg-no-repeat bg-center bg-contain relative w-[300px] h-[230px] mx-auto group">

        <img src="{{$instance->first ?? $instance->featured_image}}" width="210" height="120" alt="{{$instance->title}}" loading="lazy"
             class="absolute top-[1.6rem] right-[2.8rem] w-[210] h-[120px] bg-white duration-300 ease-linear transition-all group-hover:opacity-0">

        <img src="{{$instance->second_image ?? $instance->featured_image}}" width="210" height="120"
             alt="{{$instance->title}}" loading="lazy"
             class="absolute top-[1.6rem] right-[2.8rem] w-[210] h-[120px] bg-white duration-300 ease-linear transition-all opacity-0 group-hover:opacity-100">
    </div>
    @if($instance->url)
        <a class="sample-link text-center text-sm font-bold text-second_color"
           href="{{$instance->url}}">
            {{$instance->title}}
        </a>
    @else
        <span class="sample-link text-center text-sm font-bold text">
            {{$instance->title}}
        </span>
    @endif
</div>
