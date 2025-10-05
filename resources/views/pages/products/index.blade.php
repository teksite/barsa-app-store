<x-client-layout :seo="$seo">
    <x-slot name="editAddressPage">{{route('admin.pages.edit',$page)}}</x-slot>

    <div class="grid gap-6 md:grid-cols-3 lg:grid-cols-5 py-12 px-6 mx-auto max-w-[1920px]">
        <aside class="">
            <form method="GET">
                <div class="sticky top-6 space-y-6 text">
                    @foreach($groups as $group)
                        <div x-data="{ groupProperties: {{ $group->properties->pluck('title') }} }"
                             id="gryp-{{$group->id}}">
                            <x-box.simple class="shadow-none !py-2">
                                <div class="flex gap-3 items-center justify-between">
                                    <h3 class="mb-0">
                                        {{$group->title}}
                                    </h3>
                                    <button class="delete_filter text-xs text-main_color"
                                            @click=" document.querySelector('#gryp-{{$group->id}}')?.querySelectorAll('input').forEach(item=>item.checked=false);">
                                        {{__('delete filter')}}
                                    </button>
                                </div>
                                <hr class="border-zinc-300 my-2">
                                <ul class="space-y-2 max-h-48 overflow-y-auto">
                                    @foreach($group->properties as $property)
                                        <li class="flex items-center gap-3">
                                            <x-input.checkbox name="p[]" :value="$property->title"
                                                              id="property-{{$property->id}}"
                                                              :checked="in_array($property->title , request()->input('p',[]))"/>
                                            <x-input.label :title="$property->title" class="!mb-0"
                                                           for="property-{{$property->id}}"/>
                                        </li>
                                    @endforeach
                                </ul>
                            </x-box.simple>
                        </div>
                    @endforeach
                </div>
                <x-button.outline type="submit" role="button" title="filter" class="w-full block text-center mt-6">
                    {{__('apply filter')}}
                </x-button.outline>
            </form>
        </aside>
        <main class="md:col-span-2 lg:col-span-4">
            <ul class="grid gap-6 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
                @foreach($products as $product)
                    <li>
                        <a href="{{$product->path()}}">
                            <div class="border border-slate-300 bg-white rounded-xl p-3 select-none">
                                <div class="flex items-start justify-between gap-3">
                                    <img src="{{$product->featured_image ?? '/storage/uploads/products/default.jpg'}}" alt="{{$product->title}}"
                                         class="rounded-lg mb-6" fetchpriority="low" decoding="async" loading="lazy"
                                         width="100" height="100">
                                    @if($product->recommend_type == \Lareon\Modules\Product\App\Enums\RecommendTypeEnum::OFFICIAL)
                                        <span title="{{__('the official barsa novin ray software')}}">
                                                <i class="tkicon fill-green-600 stroke-none" data-icon="star"></i>
                                             </span>
                                    @elseif($product->recommend_type == \Lareon\Modules\Product\App\Enums\RecommendTypeEnum::CONFIRMED)
                                        <span title="{{__('confirmed by barsa novin ray')}}">
                                            <i class="tkicon fill-blue-600 stroke-none" data-icon="star"></i>
                                        </span>
                                    @endif
                                </div>
                                <span class=" font-bold">
                                    {{$product->title}}
                                </span>
                            </div>
                        </a>
                    </li>
                @endforeach
            </ul>
        </main>
    </div>
</x-client-layout>
