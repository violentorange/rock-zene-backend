<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('shoppingcart', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('song_id');
            $table->bigInteger('user_id')->unsigned();
            $table->string('quantity');
            $table->foreign('song_id')->references('id')->on('songs');
            $table->foreign('user_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('shoppingcart');
    }
};
