<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('skor_sprints', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('nilaiPoint');
            $table->integer('nilaiDosen');
            $table->integer('nilaiSprint');
            $table->integer('sprint');
            $table->integer('idTim');
            $table->timestamps();
        });


    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
