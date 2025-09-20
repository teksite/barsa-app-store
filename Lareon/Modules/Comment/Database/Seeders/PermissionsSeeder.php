<?php

namespace Lareon\Modules\Comment\Database\Seeders;

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

            /* Admin */
            [
                'title'=>'admin.comment.read',
                'description'=>'have access to read one or all comments (in the admin panel)',
            ],
            [
                'title'=>'admin.comment.create',
                'description'=>'have access to create a new comment or reply (in the admin panel)',
            ],
            [
                'title'=>'admin.comment.edit',
                'description'=>'have access to edit comments (in the admin panel)',
            ],
            [
                'title'=>'admin.comment.delete',
                'description'=>'have access to delete comments (in the admin panel)',
            ],
            [
                'title'=>'admin.comment.trash',
                'description'=>'have access to delete comments from database (in the admin panel)',
            ],
            /* Panel */
            [
                'title'=>'panel.comment.read',
                'description'=>'have access to read one or all comments (in the user panel)',
            ],
            [
                'title'=>'panel.comment.edit',
                'description'=>'have access to edit comments (in the user panel)',
            ],
            [
                'title'=>'panel.comment.delete',
                'description'=>'have access to delete comments (in the user panel)',
            ],
            /* Client */

            [
                'title'=>'client.comment.create',
                'description'=>'have access to create a new comment (from website)',
            ],

        ]);
    }
}
