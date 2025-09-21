<?php

namespace Lareon\Modules\Meta\App\Traits;

use Lareon\Modules\Meta\App\Models\MetaModel;

trait HasMeta
{
    public function meta()
    {
        return $this->morphMany(MetaModel::class, 'meta');
    }

}
