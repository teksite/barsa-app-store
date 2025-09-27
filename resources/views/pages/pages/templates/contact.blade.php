<x-client-layout :seo="$seo">
    <x-slot name="editAddressPage">{{ route('admin.pages.edit', $page) }}</x-slot>
    <main id="page-content" class="contact-page" role="main" aria-labelledby="contact-heading">
        <div class=" my-12  inner-container">
            <section id="contact-heading" class="items-center grid lg:grid-cols-2 gap-12">
                <div class="bg-no-repeat bg-cover h-full bg-theme-1 p-6">
                    <h1>{{ __('stay in touch') }}</h1>
                    <!-- Contact Methods -->
                    <nav aria-label="{{ __('contact methods') }}">
                        <ul class="space-y-6 mt-6" role="list">
                            @foreach(getStaticData('app.Data.theme.general' , [] ) as $key=>$link)
                                <li role="listitem">
                                    <div class="flex gap-3  p-1 items-center link font-semibold" title="{{__($key)}}">
                                        <i class="tkicon stroke-current" data-icon="{{$link['icon'] ?? 'link'}}"
                                           aria-hidden="true"></i>
                                        <div class="flex flex-col gap-1">
                                            <ul class="spacy-y-2">
                                                @foreach($link['items'] ?? [] as $item)
                                                    <li>
                                                        <a href="{{$item['href'] ?? '#' }}" target="_blank" rel="noopener"
                                                           title="{{ __(':item of :site', ['site'=>config('app.name') ,'item'=>__($key)])}}"
                                                           class="text-base regular leading-8">
                                                            {{$item['title']}}
                                                        </a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                    </nav>

                    <!-- Social Links -->
                    <div class="mt-12">
                        <h3>{{ __('follow us') }}</h3>
                        <p>{{ __('follow us on social network') }}</p>
                        <nav aria-label="{{ __('social media links') }}">
                            <ul class="flex gap-6 p-1 items-center" role="list">
                                @foreach(getStaticData('app.Data.theme.social', []) as $item)
                                    <li role="listitem">
                                        <a href="{{ $item['url'] }}" rel="external"
                                           class="rounded border border-main_color hover:bg-main_color_alt p-2 flex items-center text-main_color hover:text-zinc-50"
                                           title="{{ __($item['title']) }} {{ config('app.name') }}"
                                           aria-label="{{ __('Follow us on :title', ['title'=>$item['title']]) }}">
                                            <i class="tkicon fill-none stroke-current" data-icon="{{ $item['icon'] }}"
                                               stroke-width="2" size="20" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        </nav>
                    </div>
                </div>

                <!-- Right column: Contact Form -->
                <div class="relative">
                    <x-box.simple>
                        <iframe class="w-full"
                                src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12952.13343498275!2d51.399056907287594!3d35.74998482989857!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3f8e06edbc3f6cf1%3A0xaf62ea30e3aab092!2sBarsa%20Novin%20Ray%20Company!5e0!3m2!1sen!2s!4v1758964513923!5m2!1sen!2s"
                                width="600" height="300" style="border:0;" allowfullscreen="" loading="lazy" fetchporiority="low"
                                referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </x-box.simple>
                </div>

            </section>
            <hr class="w-11/12 mx-auto my-12">
            <div class="text-center">
                <p class="text-center">
                    همچنین می‌توانید از طریق راه‌های ارتباطی موجود در وب‌سایت رسمی برسا نوین‌رای با ما در ارتباط باشید و نظرات، پیشنهادات و پرسش‌های خود را با ما در میان بگذارید.
                </p>
                <x-link.outline class="text-sm">
                    {{__('barsa novin ray website')}}
                </x-link.outline>
            </div>
        </div>
    </main>
</x-client-layout>
