<div class="group">
    <form method="POST" action="{{ route('logout') }}" class="logout">
        @csrf
    </form>
    <button type="button" role="button" title="{{__('logout')}}"
       class="text-red-600 group-hover:text-red-900 flex items-center gap-1 text-sm cursor-pointer"
       onclick="event.preventDefault();document.querySelector('form.logout').submit();">
        <i class="tkicon fill-none " size="16" data-icon="turn-off" stroke-width="2"></i>
        {{__('logout')}}
    </button>
</div>
