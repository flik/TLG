<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        // database/seeds/DatabaseSeeder.php
		//$this->call(UsersTableSeeder::class);
		$this->call(TodosTableSeeder::class);
    }
}
