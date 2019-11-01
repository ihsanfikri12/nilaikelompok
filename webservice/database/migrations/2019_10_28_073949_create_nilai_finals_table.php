<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNilaiFinalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nilai_finals', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('finalNilaiSprint');
            $table->integer('nilaiUts')->nullable();
            $table->integer('nilaiUas')->nullable();
            $table->integer('finalSkorTim');
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
        Schema::dropIfExists('nilai_finals');
    }
}
