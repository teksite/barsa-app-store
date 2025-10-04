<?php

namespace Lareon\Modules\Product\App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\ResourceCollection;
use Lareon\Modules\Company\App\Http\Resources\CompanyResource;

class ProductCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @return array<int|string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'data' => $this->collection->map(function ($item) {
                return [
                    'id' => $item->id,
                    'title' => $item->title,
                    'excerpt' => $item->excerpt,
                    'featured_image' => $item->featured_image,
                    'owner' => new CompanyResource($item->owner),
                    'recommend_type' => $item->recommend_type,
                    'slug' => $item->slug,
                    'last_version' => $item->versions->first() ? new VersionResource($item->versions->first()) : null,
                ];
            }),
            'pagination' => [
                'current_page' => $this->resource->currentPage(),
                'per_page' => $this->resource->perPage(),
                'total' => $this->resource->total(),
                'last_page' => $this->resource->lastPage(),
            ],
        ];
    }
}
