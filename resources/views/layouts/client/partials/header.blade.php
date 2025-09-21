<header @click.away="sidebar=false" class="sticky top-0 shadow-lg z-50 transition-transform duration-300 ease-in-out" id="headerSite">
    <div
        class="bg-white/85 backdrop-blur-lg grid grid-cols-2 lg:grid-cols-12 items-center border-b border-zinc-50 px-3 z-30 w-full">
        <div class="lg:col-span-3">
            <a href="/" class="inline-flex items-center justify-start gap-1 p-1">
                <img src="{{asset('/storage/logo/logo-75x56.png')}}" alt="{{__(config('app.name'))}}" width="50" height="37"
                     decoding="sync" fetchPriority="high" loading="eager">
                <span class="hidden md:block lg:hidden xl:block font-bold min-w-fit w-fit h3 mb-0">
                    {{__(config('app.name'))}}
                </span>
            </a>
        </div>
        <nav x-data="{showSearch :false}" class="hidden lg:flex lg:col-span-6 items-center justify-center gap-6" @click.away="showSearch=false">
            <div  :class=" !showSearch ? 'block': 'hidden' ">
                  <x-menu.load menu="menu_1750587275"/>
            </div>
            <div id="searchHeader" class="w-full" :class=" showSearch ? 'block': 'hidden' ">
                <x-theme.search />
            </div>
            <button type="button" role="button" aria-controls="searchHeader" x-bind:aria-expanded="showSearch"
                    @click="showSearch=!showSearch" :class=" !showSearch ? 'block': 'hidden'" class="cursor-pointer"
                    aria-label="{{__('search')}}">
                <i class="tkicon stroke-zinc-600 fill-none" data-icon="magnifier"></i>
            </button>

        </nav>
        <div class="lg:col-span-3 flex items-center justify-end gap-6">
            <x-theme.profile-button/>
            <button  @click="togglesSidebar()" type="button" role="button" class="lg:hidden" x-bind:aria-expanded="sidebar"
                     aria-controls="aside-header-menu"  x-bind:aria-label="sidebar ? '{{__('close menu')}}' : '{{__('open menu')}}'" x-bind:title="sidebar ? '{{__('close menu')}}' : '{{__('open menu')}}'">
                <i class="tkicon fill-none stroke-main_color block border border-main_color rounded-lg p-1" size="28" data-icon="bar-3"></i>
            </button>
        </div>
    </div>
    @include('layouts.client.partials.mobile-aside' ,['menu'=>"menu_1750587275"])
</header>
