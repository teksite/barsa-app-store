<?php

namespace Lareon\Modules\Product\App\Enums;

enum RecommendTypeEnum :int
{
    case NONE = 1;
    case CONFIRMED = 2;
    case OFFICIAL = 3;

    public function getName()
    {
        return match ($this){
            self::CONFIRMED  => 'confirmed',
            self::OFFICIAL  => 'official',
            default  => 'none',
        };
    }
}
