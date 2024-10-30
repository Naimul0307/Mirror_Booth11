<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash; // Import the Hash facade

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        \App\Models\User::factory(1)->create([
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('123456'), // Use Hash::make to hash the password
            'role' => 'admin',
        ]);
    }
}
