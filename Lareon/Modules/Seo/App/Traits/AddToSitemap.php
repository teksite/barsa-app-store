<?php

namespace Lareon\Modules\Seo\App\Traits;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\MorphOne;
use Lareon\CMS\App\Enums\PublishStatusEnum;
use Lareon\Modules\Seo\App\Models\SeoSitemap;

trait AddToSitemap
{
    abstract public function sitemapGroup(): string;

    public function sitemap(): MorphOne
    {
        return $this->morphOne(SeoSitemap::class, 'model');
    }


    public function addToSitemap(array $data, string $group = 'general'): void
    {
        if (!method_exists($this, 'path') || !$this->path()) {
            return;
        }

        $hasPublishedAt = array_key_exists('published_at', $this->getAttributes());
        $hasPublishStatus = array_key_exists('publish_status', $this->getAttributes());
        $active = now();

        if ($hasPublishStatus && $hasPublishedAt) {
            if ($this->publish_status === PublishStatusEnum::PUBLISHED->value) {
                $active = now();
            } elseif ($this->publish_status === PublishStatusEnum::POSTPONE->value) {
                $active = $this->published_at;
            } else {
                $active = null;
            }
        } elseif ($hasPublishStatus) {
            if ($this->publish_status === PublishStatusEnum::PUBLISHED->value) {
                $active = now();
            } else {
                $active = null;
            }
        } elseif ($hasPublishedAt) {
            $active = $this->published_at ?? now();
        } else {
            $active = now();
        }


        SeoSitemap::query()->updateOrCreate(
            [
                'model_type' => get_class($this),
                'model_id' => $this->id
            ], [
                'group' => $this->sitemapGroup() ?? $group,
                'url' => $this->path(),
                'priority' => $data['priority'] ?? '0.5',
                'changefreq' => $data['changefreq'] ?? 'yearly',
                'lastmod' => $this->published_at ?? $this->updated_at ?? $this->created_at ?? now(),
                'image' => $data['image'] ?? [],
                'active' => $active,
            ]
        );
    }

    public function removeSitemap(): void
    {
        $this->sitemap()->delete();
    }

    public function deactivateInSitemap(): void
    {
        SeoSitemap::query()->updateOrCreate(
            [
                'model_type' => get_class($this),
                'model_id' => $this->id
            ], [

                'active' => null,
            ]
        );

    }

}
