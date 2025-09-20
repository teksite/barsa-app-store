<?php

return [
    App\Providers\AppServiceProvider::class,
    Teksite\Extralaravel\ExtraLaravelServiceProvider::class,
    Teksite\Handler\HandlerServiceProvider::class,
    Teksite\Authorize\AuthorizeServiceProvider::class,
    Teksite\Module\ModuleServiceProvider::class,
    Teksite\Lareon\LareonPackageServiceProvider::class,
    App\Providers\FortifyServiceProvider::class,
    Lareon\CMS\App\Providers\CmsServiceProvider::class,
];
