<?php

namespace Lareon\Modules\Product\App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Validation\Rule;

class Property extends Model
{
    protected $table = 'product_properties';
    protected $fillable = ['group_id', 'title', 'icon'];

    public static function rules(): array
    {
        return [
            'title' => 'required|string|max:200',
            'icon' => 'nullable|string|max:200',
            'group_id' => [
                Rule::when(request()->has('group_id'), Rule::exists('product_property_groups', 'id') ,['nullable']),
            ],
        ];
    }


    public static function rulesForModel(): array
    {
        return [
            'properties' => 'nullable|array',
            'properties.*' => 'exists:product_properties,id',
        ];
    }


    public function group()
    {
        return $this->belongsTo(Group::class , 'group_id');
    }
}
