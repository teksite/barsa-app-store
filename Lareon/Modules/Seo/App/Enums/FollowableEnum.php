<?php

namespace Lareon\Modules\Seo\App\Enums;

enum FollowableEnum: int
{
    case FOLLOW = 1;
    case NOFOLLOW = 0;

    public function getStatus(): string
    {
        return match ($this) {
            FollowableEnum::FOLLOW => 'follow',
            FollowableEnum::NOFOLLOW => 'nofollow',
        };
    }
}
