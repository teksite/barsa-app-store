<?php

namespace Lareon\Modules\Seo\App\Traits;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\MorphOne;
use Lareon\Modules\Seo\App\Models\SeoModel;
use Lareon\Modules\Seo\App\Models\SeoSitemap;

trait AddToSeoModel
{

    public function seo(): MorphOne
    {
        return $this->morphOne(SeoModel::class, 'model');
    }


    public function removeModelSeo(): void
    {
        $this->seo()->delete();
    }

    /**
     * Create or update SEO data for this model
     *
     * @param array $meta
     * @param array $schema
     * @return SeoModel
     */
    public function addToMetaTag(array $meta = [], array $schema = []): SeoModel
    {
        $meta['keywords'] = exploding($meta['keywords'] ?? '');
        $meta['followable'] = isset($meta['followable']) ? 1 : 0;
        $meta['indexable'] = isset($meta['indexable']) ? 1 : 0;

        return $this->seo()->updateOrCreate(
            [
                'model_type' => get_class($this),
                'model_id' => $this->id
            ],
            [
                ...$meta,
                'seo_type' => $schema['seo_type'] ?? 'webPage',
                'schema' => $schema ?? [],
            ]

        );
    }


}
