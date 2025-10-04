<?php

namespace Lareon\Modules\Product\App\Providers;

use Illuminate\Support\ServiceProvider;
use Lareon\CMS\App\Models\User;
use Lareon\Modules\Product\App\Models\Product;

class ProductServiceProvider extends ServiceProvider
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
//        $this->bootDynamicRelations();

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
            // $this->app->booted(function () {
            //     $schedule = $this->app->make(Schedule::class);
            //     $schedule->command('inspire')->hourly();
            // });
        }
    protected function bootDynamicRelations(): void
    {
//        User::resolveRelationUsing('products', function ($model) {
//            return $model->hasMany(Product::class);
//        });
    }
}
