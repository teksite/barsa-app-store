<?php

namespace Lareon\Modules\Product\App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CompanyResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'url'=>$this->url,
            'title'=>$this->title,
            'telephone'=>$this->telephone,
            'phone'=>$this->phone,
            'email'=>$this->email,
            'type'=>$this->type,

        ];
    }
}
