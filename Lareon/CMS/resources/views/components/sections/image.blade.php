@props(['name'=>'featured_image' ,'title'=>null  ,'value'=>null,'type'=>'image', 'required'=>false ,'preview'=>true, 'size'=>null] )
@php
    $random=strtolower(\Illuminate\Support\Str::random(4)).rand(1000 ,9999);
    $idInput="single-input-$random";
    $stringifiedName=dotToArray($name);
    $requiredMark=$required ? ' <span class="text-red-600">*</spam> ' : '';
    $placeholder=match($type){
        'avatar'=>['src'=>'/storage/admin/avatar-default.jpg' ,'width'=>300 , 'height'=>300],
        default=>['src'=>'/storage/admin/image-placeholder.jpg' ,'width'=>600 , 'height'=>400]
    };
@endphp
<section class="mb-3 ">
    @if($title)
        <x-lareon::input.label for="{{$idInput}}" :title="$title . $requiredMark "/>
    @endif
    @if($preview)
        <div class="max-h-[400px] overflow-y-auto relative">
            @if($size)
                <span class="absolute top-0 end-0 text-zin-600 text-xs font-bold px-3 py-1 bg-zinc-950/50 text-white"
                     >
                   use :{{$size}}
                </span>
            @endif
            <img id="{{$idInput}}-prev" src="{{$value ?? $placeholder['src']}}" alt="{{$type}}" loading="lazy"
                 fetchpriority="low" decoding="async" width="{{$placeholder['width']}}"
                 height="{{$placeholder['height']}}" data-placheolder="{{$placeholder['src']}}"
                 class="w-full max-w-full" data-id="{{$idInput}}">
            <button data-for="{{$idInput}}" data-id="{{$idInput}}" id="{{$idInput}}-delete" type="button" class="text-red-600 font-bold text-xs top-1 start-3 absolute image-delete-btn">{{__('remove')}}</button>
        </div>
    @endif
    <x-lareon::input.text dir="ltr" type="text" :name="$name" id="{{$idInput}}"
                          placeholder="{{__('choose a photo')}}" class="input_image-single"
                          :value="$value ?? ''" :required="$required" data-id="{{$idInput}}"/>
    <x-lareon::button.solid color="violet" class="w-full block button_image-single" type="button" role="button"
                            id="{{$idInput}}-btn" data-id="{{$idInput}}" placeholder="{{__('choose a photo')}}"
                            :required="$required" data-for="{{$idInput}}">
        {{__('choose')}}
    </x-lareon::button.solid>

    <x-lareon::input.error :messages="$errors->get($stringifiedName)"/>
</section>

@once
    @push('footerScripts')
        <script>
            let inputId = '';
            document.addEventListener("DOMContentLoaded", function () {

                let imageBtnEls = document.querySelectorAll('.button_image-single')
                imageBtnEls.forEach(imageBtnEl => {
                    imageBtnEl.addEventListener('click', e => {
                        e.preventDefault();
                        inputId = imageBtnEl.getAttribute('data-for');
                        window.open('{{route('fm.fm-button')}}', 'fm', 'width=1200,height=800');
                    });
                });
            });

            function fmSetLink($url) {
                const inputEl=document.getElementById(`${inputId}`);
                const previewEl=document.getElementById(`${inputId}-prev`);
                inputEl.value = $url;
                if (previewEl) previewEl.setAttribute('src', $url);
            }

            const imageDeleteBtnEls = document.querySelectorAll('.image-delete-btn');
            if (imageDeleteBtnEls.length) {
                imageDeleteBtnEls.forEach(imageDeleteBtn => {
                    imageDeleteBtn.addEventListener('dblclick', event => {
                        event.preventDefault();
                        const uniqueId = imageDeleteBtn.getAttribute('data-for');
                        document.getElementById(`${uniqueId}`).value = '';
                        const previewEl = document.getElementById(`${uniqueId}-prev`);
                        if (previewEl) {
                            previewEl.src = previewEl.getAttribute('data-placheolder');

                        }
                    })
                })
            }

            let inputImageEls = document.querySelectorAll('.input_image-single')
            if (inputImageEls.length) {
                inputImageEls.forEach(inputImageEl => {
                    inputImageEl.addEventListener('keydown', () => {
                        const uniqueId = inputImageEl.getAttribute('data-id');
                        const previewEl =document.getElementById(`${uniqueId}-prev`);
                        console.log(uniqueId , previewEl)
                        if (inputImageEl.value.length > 0) {
                            previewEl.src = inputImageEl.value;
                        } else {
                            previewEl.src = previewEl.getAttribute('data-placeholder');

                        }
                    })
                })
            }

            function deleteGalleryItem(event) {
                event.preventDefault();
                let del = event.target;
                del.parentElement.remove();
            }

        </script>

    @endpush
@endonce
