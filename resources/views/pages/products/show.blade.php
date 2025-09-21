<x-client-layout :seo="$seo">
    <x-slot name="editAddressPage">{{route('admin.products.edit',$product)}}</x-slot>
    <header class="inner-container grid md:grid-cols-2 justify-between gap-6 items-end py-12 border-b border-zinc-600">
        <section class="">
            <figure class="flex items-center gap-3">
                <img src="{{$product->featured_image}}" alt="{{$product->title}}" class="rounded-xl" width="100"
                     height="100" decoding="async" loading="lazy" fetchpriority="high">
                <figcaption>
                    <h1>
                        {{$product->title}}
                    </h1>
                    <a href="{{$product->author['path']}}"
                       class="text-main_color hover:text-main_color_alt font-semibold">
                        {{$product->author['name']}}
                    </a>
                </figcaption>
            </figure>
            @if($product->author['id'])
                <p class="mt-3">
                    {{__('the official barsa novin ray software')}}
                </p>
            @endif
            <ul class="space-y-1">
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
        </section>
        <div class="text-end">
            <x-button.solid>
                {{__('calling request')}}
            </x-button.solid>
        </div>

    </header>
    <main class="py-12 inner-container">
      <div class="grid gap-6 xl:grid-cols-3 ">
          <div class="xl:col-span-2">
              @if(count($product?->images ?? []))
                  @foreach($product?->images as $image)
                      <li>
                          <img src="{{$image}}" alt="{{__('screenshot') . $loop->iteration}} - {{$product->title}}" width="200" height="200" loading="lazy" >
                      </li>
                  @endforeach
              @endif
              <section>
                  {!! textToParagraphs($product->body) !!}
              </section>

          </div>
          <aside class="">
             <x-box.simple>
                 sdfsdfs
             </x-box.simple>
          </aside>

      </div>


    </main>
</x-client-layout>
