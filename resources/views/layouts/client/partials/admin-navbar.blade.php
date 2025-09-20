@props(['editAddressPage'=>null])
    <style>
        /*admin bar*/
        .floating_menu {
            position: fixed;
            bottom: 1rem;
            right: 1rem;
            z-index: 99999;
        }

        .floating_menu .floating_menu-button {
            background-color: #1a202c;
            color: #fff;
            border-radius: 100%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: fit-content;
            aspect-ratio: 1 / 1;
            padding: 0.5rem;
            border: 1px solid #e2e8f0;
        }

        .floating_menu .floating_menu-item {
            position: absolute;
            justify-content: center;
            align-items: center;
            background-color: #1e293b;
            padding: 1rem;
            border-radius: 100%;
            width: 8px;
            height: 8px;
            overflow: hidden;
            line-height: 0;
            aspect-ratio: 1 / 1;
            color: #fff;
            font-weight: bold;
            top: calc(50% - 1.3rem);
            right: calc(50% - 1.3rem);
            z-index: -1;
            transition: all 0.1s linear;

        }

        .floating_menu.active .floating_menu-item {
            display: inline-flex;
            border: 1px solid #e2e8f0;
        }

        .floating_menu.active .floating_menu-item:nth-child(1) {
            transform: translate3d(-6rem, 0, 0);
        }

        .floating_menu.active .floating_menu-item:nth-child(2) {
            transform: translate3d(-2.4rem, -4.7rem, 0);
        }

        .floating_menu.active .floating_menu-item:nth-child(3) {
            transform: translate3d(-4.7rem, -2.4rem, 0);
        }

        .floating_menu.active .floating_menu-item:nth-child(4) {
            transform: translate3d(0, -6rem, 0);
        }

    </style>

<div class="floating-menu-box">
    <div class="floating_menu" id="floating_menu">
        <button type="button" id="floating_menu-button" class="floating_menu-button text-zinc-200" title="{{__('quick access')}}">
            <i class="tkicon fill-none " data-icon="bar-3"></i>
        </button>
        <ul class="floating_menu-list">
            <li class="floating_menu-item">
                <form method="POST" action="{{ route('logout') }}" class="logout">
                    @csrf
                </form>
                <button type="button" role="button" title="{{__('logout')}}" class="text-zinc-200"
                        onclick="event.preventDefault();document.querySelector('form.logout').submit();">
                    <i class="tkicon fill-none stroke-red-600" data-icon="turn-off" size="16"></i>
                </button>
            </li>
            <li class="floating_menu-item">
                <a rel="nofollow" href="{{route('admin.dashboard')}}" title="{{__('admin dashboard')}}" class="text-zinc-200">
                    <i class="tkicon fill-none " data-icon="gears"></i>
                </a>
            </li>
            @if(\Illuminate\Support\Facades\Route::has('panel.dashboard'))
                <li class="floating_menu-item">
                    <a rel="nofollow" href="{{route('panel.dashboard')}}" title="{{__('user panel')}}" class="text-zinc-200">
                        <i class="tkicon fill-none " data-icon="user"></i>
                    </a>
                </li>
            @endif
            @if(isset($editAddressPage))
                <li class="floating_menu-item">
                    <a rel="nofollow" href="{{$editAddressPage}}" target="_blank" title="{{__('edit')}}" class="text-zinc-200" id="adminEditPageLink">
                        <i class="tkicon fill-none " data-icon="pen"></i>
                    </a>
                </li>
            @endif
        </ul>
    </div>
</div>
@push('footerScripts')
    <script>
        /* Admin Bar */
        document.querySelector('#floating_menu-button').addEventListener('click', e => {
            e.preventDefault();
            document.querySelector('#floating_menu').classList.toggle('active')
        });

    </script>
@endpush


