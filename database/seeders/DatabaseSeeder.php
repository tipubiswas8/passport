<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        User::factory()->create([
            "name" => "Sohel",
            "username" =>  "sohel",
            "email" =>  "sohel@gmail.com",
            "phone" =>  "0123456789",
            "password" =>  "123456"
        ]);
    }
}
