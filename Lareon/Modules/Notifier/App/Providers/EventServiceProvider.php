<?php

namespace Lareon\Modules\Notifier\App\Providers;

use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Lareon\Modules\Notifier\App\Events\NewNotifierEvent;
use Lareon\Modules\Notifier\App\Listeners\NotifierListener;

class EventServiceProvider  extends ServiceProvider
{
    /**
     * The event handler mappings for the application.
     *
     * @var array<string, array<int, string>>
     */
    protected $listen = [
        NewNotifierEvent::class=>[
            NotifierListener::class,

        ]
    ];

    /**
     * Indicates if events should be discovered.
     *
     * @var bool
     */
    protected static $shouldDiscoverEvents = true;

    /**
     * Configure the proper event listeners for email verification.
     */
    protected function configureEmailVerification(): void
    {
        //
    }
}
