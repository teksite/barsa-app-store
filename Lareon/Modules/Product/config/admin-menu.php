<?php
return [
    [
        'title' => 'products',
        'icon' => 'square-2-2',
        'can' => 'admin.product.*',
        'active' => 'admin.products.*',
        'children' => [
            [
                'title' => 'products',
                'route' => 'admin.products.index',
            ],
            [
                'title' => 'properties',
                'route' => 'admin.products.groups.index',
            ],
        ],
    ],


];
