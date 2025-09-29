<?php

namespace Lareon\Modules\Product\App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class VersionResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id'=>$this->id,
            'title'=>$this->title,
            'release_type'=>$this->release_type,
            'changes'=>$this->changes,
            'published_at'=>dateAdapter($this->published_at , 'Y-m-d'),
        ];
    }
}
