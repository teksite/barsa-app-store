<?php

namespace Lareon\Modules\Notifier\App\Models;

use Illuminate\Database\Eloquent\Model;
use Lareon\CMS\App\Models\User;

class NotifierItem extends Model
{
    protected $fillable=['creator_id','title','message','pinned',];

    public function creator()
    {
        return $this->belongsTo(User::class ,'creator_id');
    }

    public function users()
    {
        return $this->belongsToMany(User::class,'notifier_users' ,'notifier_id')
            ->using(NotifierUser::class)->withPivot(['receive_at' ,'read_at','type'])->withTimestamps();
    }
    public function items()
    {
        return $this->hasMany(NotifierUser::class ,'notifier_id');
    }
}
