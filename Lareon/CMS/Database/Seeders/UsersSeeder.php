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
            'name' => 'Sina Zangiband',
            'email' => 'sina.zangiband@gmail.com',
            'phone' => '09126037279',
            'email_verified_at' => now(),
            'phone_verified_at' => now(),
            'password' => Hash::make('sina.zangiband@gmail.com'),
        ]);
    }
}
