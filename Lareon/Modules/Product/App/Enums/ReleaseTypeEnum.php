<?php

namespace Lareon\Modules\Product\App\Enums;

enum ReleaseTypeEnum :int
{
    case PRERELEASE = 1;
    case RELEASED = 2;

    public function getName()
    {
        return match ($this){
            self::PRERELEASE  => 'prerelease',
            self::RELEASED  => 'released',
        };
    }
}
