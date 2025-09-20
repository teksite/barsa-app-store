<?php

namespace Lareon\Modules\Product\Database\Seeders;

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

            /* properties */
            [
                'title'=>'admin.product.property.read',
                'description'=>'have access to read one or all product properties (in the admin panel)',
            ],
            [
                'title'=>'admin.product.property.create',
                'description'=>'have access to create a new product property (in the admin panel)',
            ],
            [
                'title'=>'admin.product.property.edit',
                'description'=>'have access to edit product properties (in the admin panel)',
            ],
            [
                'title'=>'admin.product.property.delete',
                'description'=>'have access to delete product properties (in the admin panel)',
            ],
            /* Products */
            [
                'title'=>'admin.product.read',
                'description'=>'have access to read one or all product (in the admin panel)',
            ],
            [
                'title'=>'admin.product.create',
                'description'=>'have access to create a new product (in the admin panel)',
            ],
            [
                'title'=>'admin.product.edit',
                'description'=>'have access to edit product (in the admin panel)',
            ],
            [
                'title'=>'admin.product.delete',
                'description'=>'have access to delete product (in the admin panel)',
            ],
            [
                'title'=>'admin.product.trash',
                'description'=>'have access to delete product from database (in the admin panel)',
            ],
            /* Products - Panel */
            [
                'title'=>'panel.product.read',
                'description'=>'have access to read one or all product (in the client panel)',
            ],
            [
                'title'=>'panel.product.create',
                'description'=>'have access to create a new product (in the client panel)',
            ],
            [
                'title'=>'panel.product.edit',
                'description'=>'have access to edit product (in the client panel)',
            ],
            [
                'title'=>'panel.product.delete',
                'description'=>'have access to delete product (in the client panel)',
            ],
            [
                'title'=>'panel.product.trash',
                'description'=>'have access to delete product from database (in the client panel)',
            ],

        ]);
    }
}
