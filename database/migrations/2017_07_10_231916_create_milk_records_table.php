<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMilkRecordsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('milk_records', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('cow_id')->unsigned();
            $table->integer('quantity');
            $table->string('date_recorded');
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
        Schema::dropIfExists('milk_records');
    }
}
