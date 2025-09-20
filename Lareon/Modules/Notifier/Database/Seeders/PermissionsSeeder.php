<?php

namespace Lareon\Modules\Notifier\Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Teksite\Authorize\Models\Permission;

class PermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Permission::query()->insert([

            /* Form */
            [
                'title'=>'admin.notifier.read',
                'description'=>'have access to read one or all notifications (in the admin panel)',
            ],
            [
                'title'=>'admin.notifier.create',
                'description'=>'have access to create a new notification (in the admin panel)',
            ],
            [
                'title'=>'admin.notifier.edit',
                'description'=>'have access to edit notifications (in the admin panel)',
            ],
            [
                'title'=>'admin.notifier.delete',
                'description'=>'have access to delete notifications (in the admin panel)',
            ],
            [
                'title'=>'admin.notifier.trash',
                'description'=>'have access to delete notifications from database (in the admin panel)',
            ],
        ]);
    }
}
