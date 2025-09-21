@props([
    'name' => 'gallery[]',
    'title' => null,
    'value' => [],
    'required' => false,
    'size' => null
])

@php
    $random = strtolower(\Illuminate\Support\Str::random(4)) . rand(1000, 9999);
    $idInput = "gallery-input-$random";
    $stringifiedName = dotToArray($name);
    $requiredMark = $required ? ' <span class="text-red-600">*</span>' : '';
@endphp

<section class="mb-3">
    @if($title)
        <x-lareon::input.label
            for="{{ $idInput }}"
            :title='$title . $requiredMark . ($size ? "($size)" : "")'
        />
    @endif

    <div dir="ltr" class="max-h-[350px] h-[350px] border border-zinc-600 rounded-lg p-3 overflow-auto gallery_box flex flex-wrap gap-2" id="{{ $idInput }}-box">
        @foreach($value as $index => $item)
            <div class="relative gallery_item w-[100px] h-[75px]">
                <img src="{{ $item }}" alt="item-{{ $index }}" class="w-full h-full object-cover rounded" decoding="async" loading="lazy" fetchpriority="low">
                <input type="hidden" name="{{ $name }}" value="{{ $item }}">
                <button type="button" class="delete-gallery-item absolute top-1 end-0 text-red-600 font-bold text-xs">
                    {{ __('delete') }}
                </button>
            </div>
        @endforeach
    </div>

    <x-lareon::button.solid
        color="violet"
        class="w-full block button_image-gallery"
        type="button"
        data-target="{{ $idInput }}-box"
        data-name="{{ $name }}"
        :required="$required"
    >
        {{ __('choose') }}
    </x-lareon::button.solid>

    <x-lareon::input.error :messages="$errors->get($stringifiedName)"/>
    <x-lareon::input.error :messages="$errors->get($stringifiedName.'.*')"/>
</section>

@once
    @push('footerScripts')
        <script src="https://cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js"></script>
        <script>
            document.addEventListener('DOMContentLoaded', () => {

                // فعال کردن Sortable روی هر gallery_box
                document.querySelectorAll('.gallery_box').forEach(box => {
                    new Sortable(box, {
                        animation: 150,
                        handle: 'img',
                        ghostClass: 'opacity-50',
                        draggable: '.gallery_item'
                    });
                });

                // باز کردن File Manager
                document.querySelectorAll('.button_image-gallery').forEach(btn => {
                    btn.addEventListener('click', () => {
                        window._currentGalleryTarget = btn.dataset.target;
                        window._currentGalleryName = btn.dataset.name;

                        window.open('{{ route('fm.fm-button') }}', 'fm', 'width=1200,height=800');
                    });
                });

                document.addEventListener('dblclick', e => {
                    if (e.target.matches('.delete-gallery-item')) {
                        e.target.closest('.gallery_item').remove();
                    }
                });
            });

            function fmSetLink(url) {
                const galleryBox = document.getElementById(window._currentGalleryTarget);
                if (!galleryBox) return;

                const countItems = galleryBox.querySelectorAll('.gallery_item').length;

                const newItem = document.createElement('div');
                newItem.classList.add('relative', 'gallery_item', 'w-[100px]', 'h-[75px]');
                newItem.dataset.index = countItems;
                newItem.innerHTML = `
                    <img src="${url}" alt="item-${countItems}" class="w-full h-full object-cover rounded" decoding="async" loading="lazy" fetchpriority="low">
                    <input type="hidden" name="${window._currentGalleryName}" value="${url}">
                    <button type="button" class="delete-gallery-item absolute top-1 end-0 text-red-600 font-bold text-xs">
                        {{ __('delete') }}
                </button>
`;
                galleryBox.appendChild(newItem);
            }
        </script>
    @endpush
@endonce
