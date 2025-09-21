<?php

namespace Lareon\CMS\App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Uri;
use Symfony\Component\HttpFoundation\Response;

class SetLanguage
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if ($request->routeIs('admin.*')) {
            $lang = $request->cookie('admin-lang' ,'fa');
        }else{
            $lang = $request->cookie('client-lang' ,'fa');
        }
        if ($request->uri()->host() == 'en.localhost') {
            $lang = 'en';
        }
        App::setLocale($lang);
        Config::set('app.locale', $lang);

        return $next($request);
    }
}
