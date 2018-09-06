<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHealthsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('healths', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('cow_id')->unsigned();
            $table->string('disease');
            $table->string('medicine');
            $table->string('description');
            $table->string('comment');
            $table->string('date_treated');
            $table->timestamps();
            $table->foreign('cow_id')->references('id')->on('cows');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('healths');
    }
}
