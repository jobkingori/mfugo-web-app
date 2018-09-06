<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBooksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('books', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('vet_id')->unsigned();
            $table->integer('farmer_id')->unsigned();
            $table->string('description');
            $table->string('image');
            $table->string('datebooked');
            $table->integer('status');
            $table->timestamps();
            $table->foreign('farmer_id')->references('id')->on('people');
            $table->foreign('vet_id')->references('id')->on('people');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('books');
    }
}
