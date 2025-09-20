<?php

namespace Lareon\Modules\Seo\App\Services;

use Illuminate\Database\Eloquent\Model;
use Lareon\Modules\Seo\App\Enums\FollowableEnum;
use Lareon\Modules\Seo\App\Enums\IndexableEnum;

class MetaTagsGeneratorService
{
    private array $meta;
    private array $instance;

    public function __construct(public ?Model $model = null, public ?array $manualData = [])
    {
        if ($this->model) {
            $this->meta = $this->model->getSeo(['meta'])['meta'] ?? [];
            $this->instance = $this->model->toArray();
        } else {
            $this->meta = $manualData['meta'] ?? [];
            $this->instance = $manualData;
        }
    }

    public function generate(): array
    {
        return array_merge(
            $this->generateMeta(),
            $this->generateTwitter(),
            $this->generateOpenGraph()
        );
    }

    public function generateMeta(): array
    {
        $title = $this->meta['title'] ?? $this->instance['title'] ?? $this->instance['name'] ?? config('app.name');
        $description = $this->meta['description'] ?? $this->instance['excerpt'] ?? null;

        $followableEnum = isset($this->meta['followable'])
            ? FollowableEnum::from($this->meta['followable'])
            : FollowableEnum::FOLLOW;

        $indexableEnum = isset($this->meta['indexable'])
            ? IndexableEnum::from($this->meta['indexable'])
            : IndexableEnum::INDEX;

        $followable = $followableEnum->getStatus();
        $indexable = $indexableEnum->getStatus();

        $canonical = $this->meta['conical_url'] ?? request()->url();
        $keywords = isset($this->meta['keywords']) ? implode(',', $this->meta['keywords']) : null;
        $tags = [
            "<title>$title</title>",
            "<meta name='robots' content='$indexable,$followable'>",
            "<link rel='canonical' href='$canonical' />"
        ];
        if ($description) $tags[] = "<meta name='description' content='$description'>";
        if ($keywords && strlen($keywords)) $tags[] = "<meta name='keywords' content='$keywords'>";

        return $tags;
    }

    public function generateTwitter(): array
    {
        [$title, $description, $image, $imgAlt, $url, $site] = $this->generalData();

        $cardType = $image ? 'summary_large_image' : 'summary';

        $tags = [
            "<meta name='twitter:card' content='$cardType'>",
            "<meta name='twitter:title' content='$title'>",
            "<meta name='twitter:site' content='$site'>",
            "<meta name='twitter:url' content='$url'>"
        ];

        if ($description) $tags[] = "<meta name='twitter:description' content='$description'>";
        if ($image) $tags[] = "<meta name='twitter:image' content='$image'>";
        if ($imgAlt) $tags[] = "<meta name='twitter:alt' content='$imgAlt'>";

        return $tags;

    }

    public function generateOpenGraph(): array
    {
        [$title, $description, $image, $imgAlt, $url, $site] = $this->generalData();

        $tags = [
            "<meta property='og:type' content='website'>",
            "<meta property='og:title' content='$title'>",
            "<meta property='og:site_name' content='$site'>",
            "<meta property='og:url' content='$url'>"
        ];

        if ($description) $tags[] = "<meta property='og:description' content='$description'>";
        if ($image) $tags[] = "<meta property='og:image' content='$image'>";
        if ($imgAlt) $tags[] = "<meta property='og:image:alt' content='$imgAlt'>";

        return $tags;
    }

    public function generalData(): array
    {
        $title = $this->meta['title'] ?? $this->instance['title'] ?? $this->instance['name'] ?? config('app.name');
        $description = $this->meta['description'] ?? $this->instance['excerpt'] ?? null;
        $image = $this->instance['featured_image'] ?? $this->instance['avatar'] ?? null;
        $imgAlt = $this->instance['title'] ?? $this->instance['name'] ?? null;
        $url = $this->meta['conical_url'] ?? request()->url();
        $site = config('app.name');

        return [$title, $description, $image, $imgAlt, $url, $site];
    }
}
