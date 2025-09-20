<?php

namespace Lareon\Modules\Notifier\App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\Pivot;

class NotifierUser extends Pivot
{
    protected $table='notifier_users';
    public $timestamps=false;
    protected $fillable = ['notifier_id','user_id','type','receive_at','read_at'];
}
