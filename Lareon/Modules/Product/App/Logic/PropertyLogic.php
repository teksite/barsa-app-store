<?php

namespace Lareon\Modules\Product\App\Logic;

use Illuminate\Support\Arr;
use Lareon\Modules\Product\App\Models\Group;
use Lareon\Modules\Product\App\Models\Property;
use Teksite\Handler\Actions\ServiceWrapper;
use Teksite\Handler\Services\FetchDataService;

class PropertyLogic
{
    public function get(mixed $fetchData = [])
    {
        return app(ServiceWrapper::class)(function () use ($fetchData) {
            return app(FetchDataService::class)(Property::class, ['title'], ...$fetchData);
        });
    }

    public function getByGroup(Group $group , mixed $fetchData = [])
    {
        return app(ServiceWrapper::class)(function () use ($fetchData , $group) {
            return app(FetchDataService::class)($group->properties(), ['title'], ...$fetchData);
        });
    }

    public function register(array $input , ?Group $group = null)
    {
        return app(ServiceWrapper::class)(function () use ($group, $input) {
            if($group) $input['group_id'] = $group->id;
            return Property::query()->create($input);
        });
    }

    public function change(array $input, Property $property , ?Group $group=null)
    {
        return app(ServiceWrapper::class)(function () use ($input, $group ,$property) {
            if($group) $input['group_id'] = $group->id;

            $property->update($input);
            return $property;
        });
    }

    public function delete(Property $property)
    {
        return app(ServiceWrapper::class)(function () use ($property) {
            $property->delete();
        });
    }
}


