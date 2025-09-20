<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__ . '/../routes/web.php',
        commands: __DIR__ . '/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware) {
        $middleware->prepend([
            \Lareon\Modules\Fence\App\Http\Middleware\HoneyPotMiddleware::class,
            \Lareon\Modules\Fence\App\Http\Middleware\FenceMiddleware::class,
        ]);
        $middleware->web(append: [
            \Lareon\CMS\App\Http\Middleware\SetLanguage::class,
        ]);
        $middleware->api(append: [
            \App\Http\Middleware\CorsMiddleware::class,
        ]);
    })
    ->withExceptions(function (Exceptions $exceptions) {
        //
    })->create();
