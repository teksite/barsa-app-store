<?php

namespace Lareon\Modules\Notifier\App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use Illuminate\Support\Facades\Http;
use Lareon\Modules\Notifier\App\Models\NotifierItem;

class DynamicNotifier extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     */
    public function __construct( public NotifierItem $notifierItem)
    {
        //
    }

    /**
     * Get the notification's delivery channels.
     *
     * @return array<int, string>
     */
    public function via(object $notifiable): array
    {
        return $this->notifierItem->users()
            ->where('user_id', $notifiable->id)
            ->pluck('pivot.type')
            ->toArray();
    }

    /**
     * Get the mail representation of the notification.
     */
    public function toMail(object $notifiable): MailMessage
    {
        return (new MailMessage)
                    ->line('The introduction to the notification.')
                    ->action('Notification Action', url('/'))
                    ->line('Thank you for using our application!');
    }

    public function toSms($notifiable)
    {
        Http::post(config('services.sms.api_url'), [
            'receptor' => $notifiable->phone_number,
            'message' => "{$this->notifierItem->title}: {$this->notifierItem->message}",
            'api_key' => config('services.sms.api_key'),
        ]);

        return [
            'title' => $this->notifierItem->title,
            'message' => $this->notifierItem->message,
        ];
    }

    public function toTelegram($notifiable)
    {
        Http::post("https://api.telegram.org/bot" . config('services.telegram.bot_token') . "/sendMessage", [
            'chat_id' => $notifiable->telegram_chat_id,
            'text' => "*{$this->notifierItem->title}*\n{$this->notifierItem->message}",
            'parse_mode' => 'Markdown',
        ]);

        return [
            'title' => $this->notifierItem->title,
            'message' => $this->notifierItem->message,
        ];
    }

    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        return [
            //
        ];
    }
}
