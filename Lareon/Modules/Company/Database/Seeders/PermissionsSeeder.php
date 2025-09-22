<?php

namespace Lareon\Modules\Company\Database\Seeders;

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

            /* companies -admin */
            [
                'title'=>'admin.company.read',
                'description'=>'have access to read one or all companies (in the admin panel)',
            ],
            [
                'title'=>'admin.company.create',
                'description'=>'have access to create a new company (in the admin panel)',
            ],
            [
                'title'=>'admin.company.edit',
                'description'=>'have access to edit companies (in the admin panel)',
            ],
            [
                'title'=>'admin.company.delete',
                'description'=>'have access to delete companies (in the admin panel)',
            ],
        ]);
    }
}
