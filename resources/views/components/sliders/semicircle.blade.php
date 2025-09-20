@props(['items'=>[]])
<div>
    <div class="semicircleSlider md:block hidden">
        @foreach($items as $item)
            <div class="semicircleSlider-item">
                <div class="x-box w-[250px]">
                    <p class="text-sm text-center">
                        {{$item}}
                    </p>
                </div>
                <div class="w-8 h-8 rounded-full text-zinc-50 bg-zinc-900 border border-zinc-600 flex items-center justify-center mx-auto">
                    {{$loop->iteration}}
                </div>
            </div>
        @endforeach
        <div class="moving-dot" id="dot"></div>
    </div>
    <div class="block md:hidden space-y-6">
        @foreach($items as $item)
                <div class="flex items-center gap-3">
                    <div class="x-box w-full">
                        <p class="text-sm text-center">
                            {{$item}}
                        </p>
                    </div>
                    <div class="w-8 h-8 rounded-full text-zinc-50  min-w-fit bg-zinc-900 border border-zinc-600 flex items-center justify-center mx-auto">
                        {{$loop->iteration}}
                    </div>
                </div>
        @endforeach
    </div>
</div>
