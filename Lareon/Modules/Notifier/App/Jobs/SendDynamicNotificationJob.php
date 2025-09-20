<?php

namespace Lareon\Modules\Notifier\App\Jobs;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Foundation\Queue\Queueable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Notification;
use Lareon\CMS\App\Models\User;
use Lareon\Modules\Notifier\App\Models\NotifierItem;
use Lareon\Modules\Notifier\App\Notifications\DynamicNotifier;

class SendDynamicNotificationJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     */
    public function __construct(public NotifierItem $notifier ,public array $userIds)
    {
        //
    }

    /**
     * Execute the job.
     */
    public function handle(): void
    {
        $users = User::whereIn('id', $this->userIds)->get();

        foreach ($users as $user) {

            Notification::send($user, new DynamicNotifier($this->notifier));

            $this->notifier->users()->updateExistingPivot($user->id, [
                'receive_at' => now(),
            ]);
        }
    }
}
