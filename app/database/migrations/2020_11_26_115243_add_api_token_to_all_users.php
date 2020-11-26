<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddApiTokenToAllUsers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $users = \App\Models\User::all();
        foreach ($users as $user) {
            $user->api_token = \Illuminate\Support\Str::random(60);
            $user->save();
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        $users = \App\Models\User::all();
        foreach ($users as $user) {
            $user->api_token = null;
            $user->save();
        }
    }
}
