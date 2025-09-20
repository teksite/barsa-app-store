<?php

namespace Lareon\Modules\Product\App\Models;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    protected $table = 'product_property_groups';
    protected $fillable =['title','icon'];
    static function rules():array
    {
        return [
            'title' => 'required|string|max:200|unique:product_property_groups,title',
            'icon' => 'nullable|string|max:200',
        ];
    }

    public function properties()
    {
        return $this->hasMany(Property::class, 'group_id');
    }


}
