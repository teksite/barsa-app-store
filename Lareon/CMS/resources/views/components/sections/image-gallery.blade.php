@props([
    'name' => 'image',
    'title' => null,
    'value' => null,  // برای گالری => آرایه
    'type' => 'image', // 'image' | 'avatar' | 'gallery'
    'required' => false,
    'preview' => true,
    'size' => null
])

@php
    $random = strtolower(\Illuminate\Support\Str::random(4)) . rand(1000, 9999);
    $idInput = "media-input-$random";
    $stringifiedName = dotToArray($name);
    $requiredMark = $required ? ' <span class="text-red-600">*</span>' : '';

    if($type === 'avatar') {
        $placeholder = ['src'=>'/storage/admin/avatar-default.jpg','width'=>300,'height'=>300];
    } else {
        $placeholder = ['src'=>'/storage/admin/image-placeholder.jpg','width'=>600,'height'=>400];
    }

    $isGallery = $type === 'gallery';
@endphp

<section class="mb-3">
    @if($title)
        <x-lareon::input.label :for="$idInput" :title="$title . $requiredMark"/>
    @endif

    @if($preview)
        @if($isGallery)
            <div class="max-h-[350px] h-[350px] border border-zinc-600 rounded-lg p-3 overflow-auto gallery_box flex flex-wrap gap-2" id="{{ $idInput }}-box">
                @foreach((array)$value as $index => $item)
                    <div class="relative gallery_item w-[100px] h-[75px]">
                        <img src="{{ $item }}" alt="item-{{ $index }}" class="w-full h-full object-cover rounded">
                        <input type="hidden" name="{{ $name }}" value="{{ $item }}">
                        <button type="button" class="delete-gallery-item absolute top-1 end-0 text-red-600 font-bold text-xs">{{ __('delete') }}</button>
                    </div>
                @endforeach
            </div>
        @else
            <div class="max-h-[400px] overflow-y-auto relative">
                @if($size)
                    <span class="absolute top-0 end-0 text-zinc-600 text-xs font-bold px-3 py-1 bg-zinc-950/50 text-white">use: {{$size}}</span>
                @endif
                <img id="{{ $idInput }}-prev"
                     src="{{ $value ?? $placeholder['src'] }}"
                     alt="{{$type}}"
                     loading="lazy"
                     decoding="async"
                     width="{{$placeholder['width']}}"
                     height="{{$placeholder['height']}}"
                     data-placeholder="{{$placeholder['src']}}"
                     class="w-full max-w-full"
                     data-id="{{$idInput}}">
                <button type="button"
                        class="text-red-600 font-bold text-xs top-1 start-3 absolute image-delete-btn"
                        data-for="{{$idInput}}">
                    {{ __('remove') }}
                </button>
            </div>
        @endif
    @endif

    @if(!$isGallery)
        <x-lareon::input.text dir="ltr" type="text" name="{{ $name }}" id="{{$idInput}}"
                              placeholder="{{__('choose a photo')}}" class="input_image-single"
                              value="{{$value ?? ''}}" :required="$required" data-id="{{$idInput}}"/>
    @endif

    <x-lareon::button.solid color="violet"
                            class="w-full block button_image-media"
                            type="button"
                            data-id="{{$idInput}}"
                            data-name="{{$name}}"
                            data-type="{{$type}}">
        {{ __('choose') }}
    </x-lareon::button.solid>

    <x-lareon::input.error :messages="$errors->get($stringifiedName)"/>
    @if($isGallery)
        <x-lareon::input.error :messages="$errors->get($stringifiedName.'.*')"/>
    @endif
</section>

@once
    @push('footerScripts')
        <script src="https://cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js"></script>
        <script>
            window._fmCallbacks = window._fmCallbacks || {};

            function registerFmCallback(id, callback) {
                window._fmCallbacks[id] = callback;
            }

            function fmSetLink(url, id) {
                if(window._fmCallbacks[id]) {
                    window._fmCallbacks[id](url);
                }
            }

            document.addEventListener('DOMContentLoaded', () => {
                document.querySelectorAll('.button_image-media').forEach(btn => {
                    const id = btn.dataset.id;
                    const name = btn.dataset.name;
                    const type = btn.dataset.type;
                    const isGallery = type === 'gallery';

                    if(isGallery){
                        const galleryBox = document.getElementById(id+'-box');
                        registerFmCallback(id, function(url){
                            const countItems = galleryBox.querySelectorAll('.gallery_item').length;
                            const newItem = document.createElement('div');
                            newItem.classList.add('relative','gallery_item','w-[100px]','h-[75px]');
                            newItem.innerHTML = `
                        <img src="${url}" alt="item-${countItems}" class="w-full h-full object-cover rounded">
                        <input type="hidden" name="${name}" value="${url}">
                        <button type="button" class="delete-gallery-item absolute top-1 end-0 text-red-600 font-bold text-xs">{{ __('delete') }}</button>
                    `;
                            galleryBox.appendChild(newItem);
                        });

                        // Sortable
                        new Sortable(galleryBox,{
                            animation: 150,
                            handle: 'img',
                            ghostClass: 'opacity-50',
                            draggable: '.gallery_item'
                        });

                        // Delete
                        galleryBox.addEventListener('click', e=>{
                            if(e.target.matches('.delete-gallery-item')){
                                e.target.closest('.gallery_item').remove();
                            }
                        });

                    } else {
                        const inputEl = document.getElementById(id);
                        const previewEl = document.getElementById(id+'-prev');
                        registerFmCallback(id, function(url){
                            inputEl.value = url;
                            if(previewEl) previewEl.src = url;
                        });

                        // Delete
                        const deleteBtn = document.querySelector(`.image-delete-btn[data-for="${id}"]`);
                        if(deleteBtn){
                            deleteBtn.addEventListener('click', () => {
                                inputEl.value = '';
                                if(previewEl) previewEl.src = previewEl.dataset.placeholder;
                            });
                        }

                        // Input change
                        if(inputEl){
                            inputEl.addEventListener('input', () => {
                                if(previewEl){
                                    previewEl.src = inputEl.value.length ? inputEl.value : previewEl.dataset.placeholder;
                                }
                            });
                        }
                    }

                    // Open File Manager
                    btn.addEventListener('click', () => {
                        window.open('{{ route("fm.fm-button") }}?targetId=' + id, 'fm', 'width=1200,height=800');
                    });
                });
            });
        </script>
    @endpush
@endonce
