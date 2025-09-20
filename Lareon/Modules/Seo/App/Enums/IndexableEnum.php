<?php

namespace Lareon\Modules\Seo\App\Enums;

enum IndexableEnum: int
{
    case INDEX = 1;
    case NOINDEX = 0;

    public function getStatus(): string
    {
        return match ($this) {
            IndexableEnum::INDEX => 'index',
            IndexableEnum::NOINDEX => 'noindex',
        };
    }
}
