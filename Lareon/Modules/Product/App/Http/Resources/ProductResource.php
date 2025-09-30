<?php

namespace Lareon\Modules\Product\App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Lareon\Modules\Product\App\Enums\ReleaseTypeEnum;

class ProductResource extends JsonResource
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
            'excerpt'=>$this->excerpt,
            'body'=>textToParagraphs($this->body),
            'featured_image'=>$this->featured_image,
            'images'=>$this->images,
            'features'=>$this->features,
            'features_soon'=>$this->features_soon,
            'requirements'=>$this->requirements,
            'catalog'=>$this->catalog,
            'recommend_type'=>$this->recommend_type,
            "owner"=>new CompanyResource($this->owner),
            "properties"=>$this->groupedProperties(),
            "last_version"=>new VersionResource($this->versions()?->where('release_type', ReleaseTypeEnum::RELEASED->value)->orderBy('published_at', 'desc')->first()),
        ];
    }
}
