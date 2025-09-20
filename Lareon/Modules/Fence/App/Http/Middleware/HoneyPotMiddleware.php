<?php

namespace Lareon\Modules\Fence\App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Lareon\Modules\Fence\App\Models\RestrictIp;
use Symfony\Component\HttpFoundation\Response;

class HoneyPotMiddleware
{

    public function handle(Request $request, Closure $next): Response
    {
        if($request->formpot) abort(403);
        if($request->full_name) abort(403);

        return $next($request);
    }
}
