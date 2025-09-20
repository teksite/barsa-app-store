<?php

namespace Lareon\Modules\Notifier\App\Logic;

use Illuminate\Support\Arr;
use Lareon\CMS\App\Models\User;
use Lareon\Modules\Notifier\App\Events\NewNotifierEvent;
use Lareon\Modules\Notifier\App\Models\NotifierItem;
use Lareon\Modules\Notifier\App\Models\NotifierUser;
use Teksite\Authorize\Models\Role;
use Teksite\Handler\Actions\ServiceWrapper;
use Teksite\Handler\Services\FetchDataService;

class NotifiersLogic
{

    public function get(mixed $fetchData = [])
    {
        return app(ServiceWrapper::class)(function () use ($fetchData) {
            return app(FetchDataService::class)(NotifierItem::class, ['title'], ...$fetchData);
        });
    }

    public function register(array $inputs)
    {
        return app(ServiceWrapper::class)(function () use ($inputs) {
            $inputs['created_id'] = auth()->id();

            if (empty($inputs['users']) && empty($inputs['roles']) || empty($inputs['types'])) {
                return;
            }
            $notifier = NotifierItem::create($inputs);

            $userIds = User::query()
                ->when(!empty($inputs['users']), fn($query) => $query->whereIn('id', (array) $inputs['users']))
                ->when(!empty($inputs['roles']), fn($query) => $query->orWhereIn('id', function ($subQuery) use ($inputs) {
                    $subQuery->select('user_id')
                        ->from('role_user')
                        ->whereIn('role_id', (array) $inputs['roles']);
                }))
                ->distinct()
                ->pluck('id')
                ->toArray();

            $records = collect($userIds)->flatMap(function ($userId) use ($notifier, $inputs) {
                return array_map(function ($type) use ($notifier, $userId) {
                    return [
                        'notifier_id' => $notifier->id,
                        'user_id' => $userId,
                        'type' => $type,
                    ];
                }, (array) $inputs['types']);
            })->toArray();

            if (!empty($records)) {
                NotifierUser::insert($records);
            }

            event(new NewNotifierEvent($notifier));
        });
    }

    public function change(array $inputs, NotifierItem $item)
    {

    }

    public function delete(NotifierItem $item)
    {
        return app(ServiceWrapper::class)(function () use ($item) {
            $item->delete();
        });
    }

    protected function getModelClass(): string
    {
        return NotifierItem::class;
    }


}

