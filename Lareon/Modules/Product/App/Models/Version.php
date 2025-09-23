<?php

namespace Lareon\Modules\Product\App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Validation\Rule;
use Lareon\Modules\Product\App\Enums\ReleaseTypeEnum;

class Version extends Model
{
    protected $table = 'product_versions';

    protected $fillable = ['product_id', 'title', 'release_type', 'changes', 'published_at',];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    protected function casts(): array
    {
        return [
            'release_type'=>ReleaseTypeEnum::class,
            'published_at'=>'datetime:Y-m-d',
        ];
    }

    public static function rules()
    {
        return [
            'title'=>'required|string|max:200',
            'release_type'=>Rule::enum(ReleaseTypeEnum::class),
            'changes'=>'nullable|string',
            'published_at'=>'string|required',
        ];
    }
}
