<?php

namespace Lareon\CMS\App\Enums;

enum PublishStatusEnum: int
{
    case PUBLISHED = 1;
    case DRAFT = 2;
    case POSTPONE = 3;
    case REDIRECT = 4;

    public function getName(): string
    {
        return match ($this) {
            self::PUBLISHED => 'published',
            self::DRAFT => 'draft',
            self::POSTPONE => 'postpone',
            self::REDIRECT => 'redirect',
        };
    }


}
