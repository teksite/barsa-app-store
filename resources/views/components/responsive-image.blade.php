<picture>
    @foreach($srcsets['resized'] ?? [] as $format => $sizes)
        @if(in_array($format, ['avif','webp']))
            <source
                type="image/{{ $format }}"
                srcset="{{ implode(', ', collect($sizes)->map(fn($url, $width) => $width === 'max' ? "$url {$sizes[max(array_keys($sizes))]}w" : "$url {$width}w")->toArray()) }}"
                sizes="(max-width: 1200px) 100vw, 1200px">
        @endif
    @endforeach

    @php
        $fallbackFormat = pathinfo($srcsets['fallback'], PATHINFO_EXTENSION);
        $fallbackSrcset = $srcsets['resized'][$fallbackFormat] ?? [];
    @endphp

    <img
        src="{{ asset($srcsets['fallback']) }}"
        @if(!empty($fallbackSrcset))
            srcset="{{ implode(', ', collect($fallbackSrcset)->map(fn($url, $width) => $width === 'max' ? "$url {$fallbackSrcset[max(array_keys($fallbackSrcset))]}w" : "$url {$width}w")->toArray()) }}"
        sizes="(max-width: 1200px) 100vw, 1200px"
        @endif
        alt="{{ $alt }}"
        loading="lazy"
        decoding="async">
</picture>
