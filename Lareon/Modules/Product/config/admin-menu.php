<?php
return [
    [
        'title' => 'products',
        'icon' => 'paper-text',
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
