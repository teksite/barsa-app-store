@props(['instance'=>''])
<div>
    <div class="site-sample-item group relative group">
        <div
            class="monitor-show bg-laptop-frame block overflow-hidden bg-no-repeat bg-contain w-[300px] h-[190px] relative ">
            <div
                class="monitor-img-box absolute top-2 w-[215px] h-[135px] inset-x-0 mx-auto overflow-hidden inline-block">
                <img src="{{$instance->first_image}}" alt="{{$instance->title}}" width="400"
                     class="w-ful transition-all ease-in-out duration-3500 group-hover:translate-y-laptop">
            </div>
        </div>
        @if($instance->second_image)
            <div
                class="mobile-show bg-mobile-frame absolute inline-block bottom-0 right-2 bg-no-repeat bg-contain w-[75px] h-[150px] ">
                <div
                    class="mobile-img-box absolute top-[4px] right-[5px] w-[67px] h-[150px] rounded-lg overflow-hidden">
                    <img src="{{$instance->second_image}}" alt="{{$instance->title}} - {{__('mobile version')}}"
                         width="200" class="">
                </div>
            </div>
        @endif

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
