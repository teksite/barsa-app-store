<div>
    @auth()
        <div class="sm:flex sm:items-center sm:mx-3 w-full">
            <x-dropdown.simple align="{{is_rtl() ? 'left': 'right' }}" width="min-w-fit" contentClasses="bg-white/85 w-56 backdrop-blur-2xl">
                <x-slot name="trigger">
                    <button title="{{__('profile')}}" type="button" role="button"
                            class="inline-flex items-center text-sm leading-4 font-medium rounded-md text-zinc-600 hover:text-zinc-200 focus:outline-none transition ease-in-out duration-150">
                        <img src="{{auth()->user()->featured_image}}" alt="" width="40" height="40" class="rounded-full border border-zinc-300">
                        <span class="ms-1">
                            <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"/>
                            </svg>
                        </span>
                    </button>
                </x-slot>
                <x-slot name="content">
                    <div class="relative text space-y-1 ps-3">
                        <span class="font-bold block" id="profile-button-name">{{ auth()->user()->name }}</span>
                        <span class="text-sm block" id="profile-button-username">{{ auth()->user()->slug }}</span>
                        <span class="absolute inset-y-0 border-s-2 border-dotted border-zinc-300 -start-1.5"></span>
                    </div>
                    <hr class="my-1 borer-zinc-300">
                    <ul class="space-y-1 *:hover:bg-zinc-100 *:p-1">
                        @can('panel')
                            @if(Route::has('panel.announcements.index'))
                            <li class="">
                                <a href="{{route('panel.announcements.index')}}" class="inline-flex gap-1 items-center text text-sm">
                                    <i class="tkicon fill-none" size="16" data-icon="bell-ring"></i>
                                    {{__('announcements')}}
                                    <span class="bg-red-600 text-zinc-200 leading-none w-4 h-4 flex items-center justify-center rounded-full">
                                        {{auth()->user()->announcements()->whereNull('read_at')->count()}}
                                    </span>
                                </a>
                            </li>
                            @endif
                            @if(Route::has('panel.dashboard'))
                            <li class="">
                                <a href="{{route('panel.dashboard')}}"
                                   class="inline-flex gap-1 items-center text text-sm">
                                    <i class="tkicon fill-none" data-icon="user" size="16"></i>
                                    {{__("user panel")}}
                                </a>
                            </li>
                            @endif
                        @endcan
                        @can('admin')
                                <li class="">
                                    <a href="{{route('admin.dashboard')}}"
                                       class="inline-flex gap-1 items-center text text-sm">
                                        <i class="tkicon fill-none" data-icon="gear" size="16"></i>
                                        {{__("admin panel")}}
                                    </a>
                                </li>
                            @endcan
                        @if(Route::has('users.show'))
                            <li class="">
                                <a href="{{route('users.show', auth()->user())}}"
                                   class="inline-flex gap-1 items-center text  text-sm">
                                    <i class="tkicon fill-none " size="16" data-icon="eye"></i>
                                    {{__('your page')}}
                                </a>
                            </li>
                        @endif
                    </ul>
                    <div>
                        <hr class="my-1 borer-zinc-300">
                        <div class="flex justify-end">
                            <x-theme.logout/>
                        </div>
                    </div>
                </x-slot>
            </x-dropdown.simple>
        </div>
    @else
        <a href="{{route('login')}}"
           class="py-2 px-3 rounded-lg border border-main_color hover:bg-main_color_alt text-main_color hover:text-zinc-50 text-xs font-semibold">
           {{__('login')}}/{{__('register')}}
        </a>
    @endauth
</div>
