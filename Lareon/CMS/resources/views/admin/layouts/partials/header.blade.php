<header
    class=" mb-12 w-full rounded-lg  bg-theme-4 bg-cover bg-no-repeat bg-fixed relative">
    <div class=" p-3 min-h-48 flex items-center overflow-hidden">
       <div class="px-3">
           <h2 class="mb-3 text-zinc-50 ">
               @yield('title' ,  __('dashboard'))
           </h2>
           <p class="font-semibold text-zinc-300">
               @yield('description' , '')
           </p>
       </div>
    </div>
    @if(View::hasSection('header.start') || View::hasSection('header.end') )
        <div class="x-box flex flex-col sm:flex-row items-center justify-between gap-6 inset-x-0 -translate-y-1/2 w-11/12 mx-auto absolute ">
            <div class="flex items-center justify-start gap-3">
                @yield('header.start')
            </div>
            <div class="flex items-center justify-end gap-3">
                @yield('header.end')
            </div>
        </div>
    @endif
<div class="inset-0 w-full h-full bg-zinc-900/50 "></div>
</header>
