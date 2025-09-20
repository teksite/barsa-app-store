<?php
return [
    [
        'title' => 'pages',
        'icon' => 'paper-blank',
        'active' => 'admin.pages.*',

        'children' => [
            [
                'title' => 'List of pages',
                'route' => 'admin.pages.index',
            ], [
                'title' => 'create a new page',
                'route' => 'admin.pages.create',
            ],
        ],
    ],


];
