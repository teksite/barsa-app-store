@if(config('lareon.captcha.enable'))
    @if(config('lareon.captcha.type')==='google')
        <x-captcha::google_v2/>
    @elseif(config('lareon.captcha.type')==='local')
        <x-captcha::local/>
    @elseif(config('lareon.captcha.type')==='cloudflare')
        <x-captcha::cloudflare/>
    @else
        <p class="text-red600 font-bold mt-3">
            {{__('something goes wrong in loading captcha, please call the administrator of the website')}}.
        </p>
    @endif
@endif
