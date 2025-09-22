<x-client-layout :seo="$seo">
    <x-slot name="editAddressPage">{{route('admin.products.edit',$product)}}</x-slot>
    <header class="inner-container py-12 border-b border-zinc-600">
        <section class="">
            <figure class="flex items-center gap-3">
                <img src="{{$product->featured_image}}" alt="{{$product->title}}" class="rounded-xl" width="100"
                     height="100" decoding="async" loading="lazy" fetchpriority="high">
                <figcaption class="flex flex-col gap-3 justify-center">
                    <h1 class="mb-0">
                        {{$product->title}}
                    </h1>

                    <a href="{{$product->author['path']}}"
                       class="text-main_color hover:text-main_color_alt font-semibold">
                        {{$product->author['name']}}
                    </a>
                </figcaption>
            </figure>
            @if($product->excerpt)
                <p class="mt-3">
                    {{$product->excerpt}}
                </p>
            @endif

            <ul class="space-y-3 mt-6">
                @foreach($product->groupedProperties() as $group=>$properties)
                    <li class="flex items-center gap-3">
                        <span class="font-bold">{{$group}}</span>
                        <ul class="flex items-center gap-1 text">
                            @foreach($properties as $property)
                                <li class="bg-slate-300 text-slate-600 rounded-xl px-3 py-1 select-none">
                                    {{$property->title}}
                                </li>
                            @endforeach
                        </ul>
                    </li>
                @endforeach
            </ul>

            @if($product->author['id'])
                <div class="flex items-center gap-1 mt-3 ">
                    <i class="tkicon fill-yellow-600 stroke-none" data-icon="star"></i>
                    <p class="mb-0 text-yellow-600 font-bold">
                        {{__('the official barsa novin ray software')}}
                    </p>
                </div>
            @endif
        </section>

    </header>
    <div class="py-12 inner-container">
        <div class="grid gap-6 xl:grid-cols-3 ">
            <main class="xl:col-span-2">
                @if(count($product?->images ?? []))
                    <div>
                        <ul>
                            @foreach($product?->images as $image)
                                <li>
                                    <img src="{{$image}}"
                                         alt="{{__('screenshot') . $loop->iteration}} - {{$product->title}}" width="200"
                                         height="200" loading="lazy">
                                </li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <section class="mb-6">
                    {!! textToParagraphs($product->body) !!}
                </section>
                @if(count($product?->features ?? []))
                    <section>
                        <h2>
                            {{__('features of :title' ,['title'=>$product->title])}}
                        </h2>
                        <x-accordion.more :items="$product?->features ?? []"/>
                        @if(count($product?->features_soon ?? []))
                            <section>
                                <h3>
                                    {{__('upcoming product features of :title' ,['title'=>$product->title])}}
                                </h3>
                                <x-accordion.more :items="$product?->features_soon ?? []"/>
                            </section>
                        @endif
                    </section>
                @endif
                @if(count($product?->requirements ?? []))
                    <section class="w-11/12 md:w-1/2 bg-white rounded-lg p-6">
                        <h2>
                            {{__('requirements')}}
                        </h2>
                        <ul class="space-y-1 text">
                            @foreach($product?->requirements ?? [] as $requirement)
                                <li>
                                    {{$requirement}}
                                </li>
                            @endforeach
                        </ul>
                    </section>
                @endif
                @if($product?->catalog)
                    <a href="{{$product->catalog}}" class="inline-block w-11/12 md:w-1/2 bg-white rounded-lg p-6  mt-6 ">
                       <div class=" flex items-center gap-3 font-bold">
                           <i class="tkicon fill-none stroke-main_color stroke-1 min-w-fit w-fit" size="48" data-icon="cloud-arrow" ></i>
                           <div class="text-xs w-full">
                               <span  class="text-main_color_alt">{{__('download the catalog')}}</span>
                               <hr class="border-main_color my-1">
                               <span class="text-main_color">{{$product->title}}</span>
                           </div>
                       </div>
                    </a>
                @endif

            </main>
            <aside class="">
                <x-box.simple>
                    sdfsdfs
                </x-box.simple>
            </aside>
        </div>


    </div>
</x-client-layout>
