<?php

namespace Lareon\Modules\Notifier\App\Listeners;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Lareon\Modules\Notifier\App\Jobs\SendDynamicNotificationJob;
use Lareon\Modules\Notifier\App\Models\NotifierItem;

class NotifierListener implements ShouldQueue
{
    public int $tries = 3;
    public int $timeout = 60;
    /**
     * Create the event listener.
     */
    public function __construct()
    {

    }

    /**
     * Handle the event.
     */
    public function handle(object $event): void
    {
        $notifierItem = $event->notifierItem;

        $userIds = $notifierItem->users()->pluck('user_id')->toArray();

        $chunks = array_chunk($userIds, 100);

        foreach ($chunks as $index => $userChunk) {
            SendDynamicNotificationJob::dispatch($notifierItem, $userChunk)->delay(now()->addSeconds($index * 10));
        }


    }
}
