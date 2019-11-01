<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSkorDosensTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('skor_dosens', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('KetepatanWaktu')->nullable();
            $table->integer('Kelengkapan')->nullable();
            $table->integer('KualitasHasil')->nullable();
            $table->integer('sprint');
            $table->integer('idUser');
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
        Schema::dropIfExists('skor_dosens');
    }
}
