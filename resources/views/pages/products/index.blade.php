<x-client-layout :seo="$seo">
    <x-slot name="editAddressPage">{{route('admin.pages.edit',$page)}}</x-slot>

    <div class="grid gap-6 md:grid-cols-3 lg:grid-cols-5 py-12 px-6 mx-auto max-w-[1920px]">
        <aside class="">
            <div class="sticky top-6 space-y-6 text">
                @foreach($groups as $group)
                    <x-box.simple class="shadow-none !py-2">
                        <h3 class="mb-0">
                            {{$group->title}}
                        </h3>
                        <hr class="border-zinc-300 my-2">
                        <ul class="space-y-2 max-h-48 overflow-y-auto">
                            @foreach($group->properties as $property)
                                <li class="flex items-center gap-3">
                                    <x-input.checkbox :value="$property->title" id="property-{{$property->id}}"/>
                                    <x-input.label :title="$property->title" class="!mb-0"
                                                   for="property-{{$property->id}}"/>
                                </li>
                            @endforeach
                        </ul>
                    </x-box.simple>
                @endforeach
            </div>
        </aside>
        <main class="md:col-span-2 lg:col-span-4">
            <ul class="grid gap-6 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
                @foreach($products as $product)
                    <li>
                        <div class="border border-slate-300 bg-white rounded-xl p-3">
                            <a href="{{$product->path()}}">
                                <div class="flex items-start justify-between gap-3">
                                    <img src="{{$product->featured_image}}" alt="{{$product->title}}"
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
                            </a>
                        </div>
                    </li>
                @endforeach
            </ul>
        </main>
    </div>
</x-client-layout>
