<?php

namespace Lareon\Modules\Product\App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\ResourceCollection;

class VersionsCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @return array<int|string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'data' => VersionResource::collection($this->collection),
//            'pagination' => [
//                'current_page' => $this->currentPage(),
//                'per_page' => $this->perPage(),
//                'total' => $this->total(),
//                'last_page' => $this->lastPage(),
//            ],
        ];

    }
}
