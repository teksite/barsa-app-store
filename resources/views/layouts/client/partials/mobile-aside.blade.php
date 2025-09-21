<aside class=" fixed top-0 start-0 w-3/4 sm:w-1/2  transition-all duration-100 " x-cloak="sidebar"
       :class="sidebar ? 'translate-x-0' : 'translate-x-full' ">
    <div class="h-svh bg-zinc-900 shadow-sm flex flex-col justify-between ps-3 py-3 rounded-lg border border-zinc-600">
        <div class=" overflow-auto flex flex-col gap-1">
            <div class="mb-6 flex items-center gap-1 min-h-fit h-fit">
                <a href="/" class="inline-flex items-center justify-start gap-1 p-1">
                    <img src="{{asset('/storage/logo/logo-50.png')}}" alt="{{__(config('app.name'))}}" width="50"
                         height="50"
                         decoding="sync" fetchPriority="high" loading="eager">
                    <span class="text font-bold min-w-fit w-fit mb-0">
                    {{__(config('app.name'))}}
                </span>
                </a>
            </div>
            <nav class=" h-full overflow-y-auto">
                <x-menu.accordion.load :menu="$menu"/>

            </nav>
        </div>
    </div>
</aside>
