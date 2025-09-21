<?php

namespace Lareon\Modules\Meta\App\Models;

use Illuminate\Database\Eloquent\Model;

class MetaModel extends Model
{
    protected $fillable =['model','key','value','stance',];

    public function model()
    {
        return $this->morphTo('model');

    }
}
