<?php

namespace Lareon\CMS\Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Lareon\CMS\App\Models\User;
use Lareon\Modules\Company\App\Models\Company;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $company=Company::query()->insert([
            'title' => 'برسا نوین رای',
            'national_id' => '10103109580',
            'phone' => '02143000090',
            'telephone' => '02191304846',
            'email' => 'info@barsasoft.com',
            'url' => 'https://barsasoft.com',
        ]);
        User::query()->insert([
            'company_id' =>1,
            'name' => 'Sina Zangiband',
            'email' => 'sina.zangiband@gmail.com',
            'phone' => '09126037279',
            'email_verified_at' => now(),
            'phone_verified_at' => now(),
            'password' => Hash::make('sina.zangiband@gmail.com'),
        ]);
    }
}
