<x-client-layout :seo="$seo ?? null">
    <x-slot name="editAddressPage">{{route('admin.products.versions.index',$product)}}</x-slot>
    <x-product.header :product="$product"/>
    <main class="py-12 inner-container">
        <div class="flex items-center justify-end">
            <a href="{{$product->path()}}" class="text-main_color text-sm font-bold flex items-center gap-1 mb-6">
                <i class="tkicon stroke-current fill-none" data-icon="arrow-left" size="16"></i>
                {{__('back')}}
            </a>
        </div>
        <section>
            <h2>
                {{__('versions')}}
            </h2>
            @if(isset($versions) && count($versions))
                <ul class="space-y-3">
                    @foreach($versions as $version)
                        <li class="">
                            <x-box.simple>
                                <div class="flex mb-3 justify-between gap-6 items-center">
                                    <div class="flex items-center gap-3 justify-start">
                                        <h3 class="mb-0">
                                            {{$version->title}}
                                        </h3>
                                        <span
                                            class="px-3 text-xs py-1 font-bold rounded-xl {{$version->release_type == \Lareon\Modules\Product\App\Enums\ReleaseTypeEnum::RELEASED  ? 'text-green-900 bg-green-300': 'text-yellow-900 bg-yellow-300'  }}">
                                          {{__($version->release_type->getName())}}
                                      </span>

                                    </div>
                                    <div class="text">
                                        {{__('release time')}}:
                                        <span dir="ltr">
                                          {{dateAdapter($version->published_at , 'Y-m-d')}}
                                      </span>
                                    </div>
                                </div>
                                @if($version->changes)
                                    {!! textToParagraphs($version->changes) !!}
                                @endif

                            </x-box.simple>
                        </li>
                    @endforeach
                </ul>

            @endif
        </section>

    </main>
</x-client-layout>
