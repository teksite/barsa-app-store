<x-client-layout :seo="$seo">
    <x-slot name="editAddressPage">{{route('admin.products.edit',$product)}}</x-slot>
    <x-product.header :product="$product"/>
    <article class="py-12 inner-container">
        <div class="grid gap-6 xl:grid-cols-3 ">
            <main class="xl:col-span-2">

                <section class="mb-6">
                    <h2>
                        {{__('description')}}
                    </h2>
                    {!! textToParagraphs($product->body) !!}

                    @if(count($product?->images ?? []))
                        <x-portfolio.gallery :images="$product?->images"/>
                    @endif
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
                    <a href="{{$product->catalog}}"
                       class="inline-block w-11/12 md:w-1/2 bg-white rounded-lg p-6  mt-6 ">
                        <div class=" flex items-center gap-3 font-bold">
                            <i class="tkicon fill-none stroke-main_color stroke-1 min-w-fit w-fit" size="48"
                               data-icon="cloud-arrow"></i>
                            <div class="text-xs w-full">
                                <span class="text-main_color_alt">{{__('the catalog of :title' ,['title'=>$product->title])}}</span>
                                <hr class="border-main_color my-1">
                                <span class="text-main_color">{{__('visit the catalog')}} - {{__('click here')}}</span>
                            </div>
                        </div>
                    </a>
                @endif

            </main>
            <aside class="">
                <div class="sticky top-6 space-y-6">
                    @if($product->owner)
                        <x-box.simple class="">
                            <nav>
                                <h3 class="mb-0">
                                    {{__('developer')}}
                                </h3>
                                <hr class="border-zinc-300 my-3">
                                <div class="mb-3 flex items-center gap-1 justify-between ">
                              <span class="flex items-center justify-start gap-1">
                                @if($product->owner->type == \Lareon\Modules\Company\App\Enums\CompanyTypeEnum::NATURAL->value)
                                      <i class="tkicon fill-none stroke-current" data-icon="user" size="18"></i>
                                      {{__('name')}}
                                  @else
                                      <i class="tkicon fill-none stroke-current" data-icon="building" size="18"></i>
                                      {{__('company')}}
                                  @endif
                                </span>
                                    <span>
                                    {{$product->owner?->title}}
                                </span>
                                </div>
                                <ul class="space-y-3 text">
                                    @foreach(['email'=>['email' ,'mailto:'] , 'phone'=>['phone' ,'tel:'] , 'telephone'=>['telephone' ,'tel:']] as $key=>$type)
                                        @if($product->owner?->$key)
                                            <li>
                                                <a href="{{$type[1]}}{{$product->owner?->$key}}" rel="external"
                                                   class="flex items-center gap-1 justify-between text-main_color_alt font-semibold hover hover:bg-slate-50 p-1 rounded-lg">
                                            <span class="flex items-center justify-start gap-1">
                                                <i class="tkicon fill-none stroke-current" data-icon="{{$type[0]}}"
                                                   size="18"></i>
                                                {{__($key)}}
                                            </span>
                                                    <span>
                                               {{$product->owner?->$key}}
                                           </span>
                                                </a>
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </nav>
                        </x-box.simple>
                    @endif
                    @if($version)
                        <x-box.simple class="">
                            <h3 class="mb-0">
                                {{__('last version')}}
                            </h3>
                            <hr class="border-zinc-300 my-3">
                            <ul class="space-y-3 text">
                                <li class="flex items-center justify-between">
                                <span>
                                    {{__('version')}}
                                </span>
                                    <span>
                                    {{$version->title}}
                                </span>
                                </li>
                                <li class="flex items-center justify-between">
                                <span>
                                    {{__('release time')}}
                                </span>
                                    <span dir="ltr">
                                    {{dateAdapter($version->published_at , 'Y-m-d')}}
                                </span>
                                </li>
                            </ul>
                            <div class="text-center mt-3">
                                <a href="{{route('products.versions.index', $product)}}"
                                   class="text-center text-sm text-main_color">
                                    {{__('all :title',['title'=>__('versions')])}}
                                </a>
                            </div>
                        </x-box.simple>
                    @endif

                    <div class="class border border-zinc-300 rounded-xl p-6">
                        <h3 class="mb-0 text-center">
                            {{__('request demo by barsa')}}
                        </h3>
                        <hr class="border-zinc-300 my-3">
                      <div class=" mt-3">
                          <div class="flex items-center justify-center">
                              <x-button.outline class="text-sm"  x-on:click="$dispatch('open-modal', 'demo-modal')">
                                  {{__('demo form')}}
                              </x-button.outline>
                          </div>
                          <x-modal id="{{$product->id}}" name="demo-modal">
                             <div class="shadow-input mx-auto w-full p-3 rounded-xl border border-zinc-300">
                                 <h4>
                                     {{__('demo request form')}}
                                 </h4>
                                 <p className="mt-2 max-w-sm text-sm text-neutral-600 dark:text-neutral-300">
                                     جهت هماهنگی تعیین وقت جهت مشاهده دمو این نرم افزار از طریق برسا نوین رای، فرم زیر را پر و ارسال نمایید.
                                 </p>
                                 <x-questionnaire::form-layout form="2" :title="$product->title"/>

                             </div>
                          </x-modal>
                      </div>
                    </div>

                </div>
            </aside>
        </div>


    </article>
</x-client-layout>
