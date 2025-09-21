<?php

namespace Lareon\CMS\Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Lareon\CMS\App\Models\User;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::query()->insert([
            'parent_id' => null,
            'slug' => '09126037279',
            'name' => 'Sina Zangiband',
            'nick_name' => 'Administrator',
            'email' => 'sina.zangiband@gmail.com',
            'phone' => '09126037279',
            'telegram_id' => null,
            'featured_image' => '/storage/uploads/users/sina_zangiband.png',
            'email_verified_at' => now(),
            'phone_verified_at' => now(),
            'password' => Hash::make('sina.zangiband@gmail.com'),
        ]);
    }
}
