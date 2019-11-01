<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class DropTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::drop('skor_dosens');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::create('skor_dosens', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('KetepatanWaktu')->nullable();
            $table->integer('Kelengkapan')->nullable();
            $table->integer('KualitasHasil')->nullable();
            $table->integer('TotalNilai');
            $table->integer('Sprint');
            $table->integer('idUser');
            $table->integer('idTim');
            $table->timestamps();
        });
    }
}
