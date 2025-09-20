<?php

namespace Lareon\Modules\Product\App\Logic;

use Illuminate\Support\Arr;
use Lareon\Modules\Product\App\Models\Group;
use Teksite\Handler\Actions\ServiceWrapper;
use Teksite\Handler\Services\FetchDataService;

class PropertyGroupLogic
{
    public function get(mixed $fetchData = [])
    {
        return app(ServiceWrapper::class)(function () use ($fetchData) {
            return app(FetchDataService::class)(Group::class, ['title'], ...$fetchData);
        });
    }

    public function register(array $input)
    {
        return app(ServiceWrapper::class)(function () use ($input) {
            return Group::query()->create($input);
        });
    }

    public function change(array $input, Group $group)
    {
        return app(ServiceWrapper::class)(function () use ($input, $group) {
            $group->update($input);
            return $group;
        });
    }

    public function delete(Group $group)
    {
        return app(ServiceWrapper::class)(function () use ($group) {
            $group->delete();
        });
    }
}


