<div {{$attributes->merge(['class'=>"p-3 relative  rounded-xl"])}}>
    <div class="glow_box bg-transparent p-3 relative" style="--start:0;">
        <div class="glows absolute inset-0 -z-10  rounded-xl"></div>
        {{ $slot }}
    </div>

</div>


