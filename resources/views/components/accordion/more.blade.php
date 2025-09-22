@props(['items'=>[], 'count'=>10])
@php($key=rand(10,1000))
<div x-data="{ showAll: false }" class="mb-12" id="more_item-box-{{$key}}" aria-expanded="false" aria-controls="more_item-list-{{$key}}">
    <ul class="list-disc list-inside text space-y-3" id="more_item-list-{{$key}}">
        @foreach($items ?? [] as $item)
            <li
                class="flex items-start gap-3"
                x-show="showAll || {{ $loop->index }} < {{$count}}"
                x-transition
                itemscope
                itemtype="http://schema.org/ListItem">
                <span itemprop="name">{{ $item }}</span>
            </li>
        @endforeach
    </ul>

    @if(count($product?->features ?? []) > $count)
        <button
            type="button"
            aria-controls="features-list"
            :aria-expanded="showAll.toString()"
            @click="showAll = true; $el.closest('#more_item-box-{{$key}}').setAttribute('aria-expanded', 'true'); $el.remove()"
            class="mt-3 text-second_color">
            {{ __('more') }}
        </button>
    @endif
</div>
