<x-client-layout :seo="$seo">
    <x-slot name="editAddressPage">{{ route('admin.pages.edit', $page) }}</x-slot>

    <main id="page-content" class="contact-page" role="main" aria-labelledby="contact-heading">
        <section id="contact-heading" class="my-12 items-center inner-container grid lg:grid-cols-2 gap-12">
            <div class="bg-no-repeat bg-cover h-full bg-theme-1 p-6">
                <h1>{{ __('stay in touch') }}</h1>
                <p>
                    {{ __('feel free to reach out to :site and its different departments using the contact methods listed on this page', ['site'=>config('app.name')]) }}
                    {{ __('we welcome your feedback, suggestions, and comments.', ['site'=>config('app.name')]) }}
                </p>

                <!-- Contact Methods -->
                <h2 class="mt-6">{{ __('contact methods') }}</h2>
                <nav aria-label="{{ __('contact methods') }}">
                    <ul class="space-y-12 mt-6" role="list">
                        <!-- Address -->
                        <li role="listitem">
                            <div class="flex gap-3 text-white p-1 items-center">
                                <span>
                                    <i class="tkicon fill-main_color stroke-zinc-900" stroke-width="2" data-icon="marker-location" aria-hidden="true"></i>
                                </span>
                                <div class="flex flex-col gap-1">
                                    <span class="text-xl font-bold">{{ __('address') }}</span>
                                    <address>
                                        <a href="{{ getStaticData('app.Data.theme.general.map', '#') }}" target="_blank"
                                           rel="noopener" title="{{ __('Address of :site', ['site'=>config('app.name')]) }}"
                                           class="text-base regular leading-8">
                                            {{ getStaticData('app.Data.theme.general.address', '') }}
                                        </a>
                                    </address>
                                </div>
                            </div>
                        </li>

                        <!-- Phone -->
                        <li role="listitem">
                            <div class="flex gap-3 text-white p-1 items-center">
                                <span>
                                    <i class="tkicon fill-main_color stroke-zinc-900" data-icon="phone" aria-hidden="true"></i>
                                </span>
                                <div class="flex flex-col gap-1">
                                    <span class="text-xl font-bold">{{ __('phone') }}</span>
                                    <a href="tel:{{ getStaticData('app.Data.theme.general.phone', '(+98)9126037279') }}"
                                       title="{{ __('phone') }} {{ getStaticData('app.Data.theme.general.phone', '(+98)9126037279') }}"
                                       class="text-base regular" dir="ltr">
                                        {{ getStaticData('app.Data.theme.general.phone', '(+98)9126037279') }}
                                    </a>
                                </div>
                            </div>
                        </li>

                        <!-- Email -->
                        <li role="listitem">
                            <div class="flex gap-3 text-white p-1 items-center">
                                <span>
                                    <i class="tkicon fill-main_color stroke-zinc-900" data-icon="mail" aria-hidden="true"></i>
                                </span>
                                <div class="flex flex-col gap-1">
                                    <span class="text-xl font-bold">{{ __('email') }}</span>
                                    <div class="flex items-center gap-3">
                                        <a href="mailto:{{ getStaticData('app.Data.theme.general.email', 'info@teksite.net') }}"
                                           target="_blank"
                                           title="{{ __('email :site', ['site'=>config('app.name')]) }}"
                                           class="text-base regular"
                                           aria-label="{{ __('Email :site', ['site'=>config('app.name')]) }}">
                                            {{ getStaticData('app.Data.theme.general.email', 'info@teksite.net') }}
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </nav>

                <!-- Social Links -->
                <div class="mt-12">
                    <h3>{{ __('follow us') }}</h3>
                    <p>{{ __('follow us on social network') }}</p>
                    <nav aria-label="{{ __('social media links') }}">
                        <ul class="flex gap-6 text-white p-1 items-center" role="list">
                            @foreach(getStaticData('app.Data.theme.social', []) as $item)
                                <li role="listitem">
                                    <a href="{{ $item['url'] }}" rel="external"
                                       class="rounded border border-gray-400 hover:bg-main_alt_color p-2 flex items-center hover:bg-main_color"
                                       title="{{ __($item['title']) }} {{ config('app.name') }}"
                                       aria-label="{{ __('Follow us on :title', ['title'=>$item['title']]) }}">
                                        <i class="tkicon stroke-gray-50 fill-none" data-icon="{{ $item['icon'] }}" stroke-width="2" size="20" aria-hidden="true"></i>
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                    </nav>
                </div>
            </div>

            <!-- Right column: Contact Form -->
            <div class="relative">
                <x-box.border-glow class="h-full bg-gradient-radial from-zinc-900 to-zinc-950 border border-zinc-600 shadow-inner shadow-zinc-600 p-6">
                    <h2 class="text-center">{{ __('contact form') }}</h2>
                    <hr class="my-6 border-zinc-600">
                    <x-questionnaire::form-layout form="1"/>
                </x-box.border-glow>
            </div>

        </section>
    </main>
</x-client-layout>
