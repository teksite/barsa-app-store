<?php

namespace Lareon\Modules\Theme\App\Logic;

use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Lareon\Modules\Page\App\Models\Page;
use Lareon\Modules\Tag\App\Models\Tag;
use Teksite\Handler\Actions\ServiceWrapper;
use Teksite\Handler\Services\FetchDataService;

class SearchLogic
{
    public function search(?string $keyword)
    {
        return app(ServiceWrapper::class)(function () use ($keyword) {
            $tagIds = Tag::query()
                ->where('title', 'like', "%{$keyword}%")
                ->pluck('id');

            $tagged = DB::table('tag_models')
                ->whereIn('tag_id', $tagIds)
                ->paginate(20);

            $grouped = collect($tagged->items())->groupBy('model_type');

            $items = collect();

            foreach ($grouped as $modelType => $rows) {
                $ids = collect($rows)->pluck('model_id');
                $models = $modelType::whereIn('id', $ids)->get();
                $items = $items->merge($models);
            }

            $paginated = $tagged->setCollection($items);

            return $paginated;
        });
    }
}

