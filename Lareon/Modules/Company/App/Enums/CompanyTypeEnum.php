<?php

namespace Lareon\Modules\Company\App\Enums;

enum CompanyTypeEnum :int
{
    case LEGAL = 1;
    case NATURAL = 2;

    public function getName()
    {
        return match ($this){
            self::LEGAL  => 'legal person',
            self::NATURAL  => 'natural person',
        };
    }
}
