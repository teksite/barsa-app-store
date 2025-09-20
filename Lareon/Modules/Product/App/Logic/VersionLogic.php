<?php

namespace Lareon\Modules\Product\App\Logic;

use Illuminate\Support\Arr;
use Lareon\Modules\Product\App\Models\Product;
use Lareon\Modules\Product\App\Models\Version;
use Teksite\Handler\Actions\ServiceWrapper;
use Teksite\Handler\Services\FetchDataService;

class VersionLogic
{
    public function get(mixed $fetchData = [])
    {
        return app(ServiceWrapper::class)(function () use ($fetchData) {
            return app(FetchDataService::class)(Version::class, ['title' ,'type'], ...$fetchData);
        });
    }

    public function getByProduct(Product $product , mixed $fetchData = [])
    {
        return app(ServiceWrapper::class)(function () use ($fetchData , $product) {
            return app(FetchDataService::class)($product->versions(), ['title','type'], ...$fetchData);
        });
    }

    public function register(array $input , Product $product)
    {
        return app(ServiceWrapper::class)(function () use ($product, $input) {
            return $product->versions()->create($input);
        });
    }

    public function change(array $input, Version $version)
    {
        return app(ServiceWrapper::class)(function () use ($input ,$version) {
            $version->update($input);
            return $version;
        });
    }

    public function delete(Version $version)
    {
        return app(ServiceWrapper::class)(function () use ($version) {
            $version->delete();
        });
    }
}


