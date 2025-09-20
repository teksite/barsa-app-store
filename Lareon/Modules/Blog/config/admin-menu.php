<?php
return [
    [
        'title' => 'blog',
        'icon' => 'paper-text',
        'can' => 'admin.blog.*',
        'active' => 'admin.blog.*',
        'children' => [
            [
                'title' => 'posts',
                'route' => 'admin.blog.posts.index',
            ], [
                'title' => 'annotations',
                'route' => 'admin.blog.annotations.index',
            ], [
                'title' => 'categories',
                'route' => 'admin.blog.categories.index',
            ]
        ],
    ],


];
