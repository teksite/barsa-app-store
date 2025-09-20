<?php

namespace Lareon\CMS\App\Models\Scopes;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Scope;
use Illuminate\Support\Facades\Schema;
use Lareon\CMS\App\Enums\PublishStatusEnum;

class PublishStatusScope implements Scope
{
    /**
     * Apply the scope to a given Eloquent query builder.
     */
    public function apply(Builder $builder, Model $model): void
    {
        // کاربران admin مسیر admin.* بدون محدودیت رکوردها را ببینند
        if ($this->canSeeAllRecords()) {
            return;
        }

        $table = $model->getTable();
        $hasPublishedAtColumn = Schema::hasColumn($table, 'published_at');

        $builder->where(function (Builder $query) use ($hasPublishedAtColumn) {
            $query->where('publish_status', PublishStatusEnum::PUBLISHED->value)
                ->orWhere(function (Builder $subQuery) use ($hasPublishedAtColumn) {
                    $subQuery->where('publish_status', PublishStatusEnum::POSTPONE->value)
                        ->when($hasPublishedAtColumn, fn(Builder $q) =>
                        $q->where('published_at', '<=', now())
                        );
                });
        });
    }


    protected function canSeeAllRecords(): bool
    {
        return request()->routeIs('admin.*')
            && auth()->check()
            && auth()->user()->can('admin');
    }
}
