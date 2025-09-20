<?php

namespace Lareon\Modules\Comment\App\Providers;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Support\ServiceProvider;
use Lareon\CMS\App\Models\User;
use Lareon\Modules\Comment\App\Models\Comment;

class CommentServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
       $this->app->register(EventServiceProvider::class);
       // $this->app->register(RouteServiceProvider::class);
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
         $this->registerCommands();
         $this->registerCommandSchedules();
         $this->bootDynamicRelations();
    }


    /**
         * Register commands in the format of Command::class
         */
        protected function registerCommands(): void
        {
            // $this->commands([]);
        }

        /**
         * Register command Schedules.
         */
        protected function registerCommandSchedules(): void
        {
            $this->app->booted(function () {
                $schedule = $this->app->make(Schedule::class);
                $schedule->command('comment:clear')->dailyAt('03:00');
            });
        }

        protected function bootDynamicRelations(): void
        {
            User::resolveRelationUsing('comments', function ($model , bool $withTrashed = false) {
                return $model->hasMany(Comment::class)->when($withTrashed, function ($query) {
                    $query->withTrashed();
                });
            });
        }
}
