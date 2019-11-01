<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddSKorPoint extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        Schema::drop('skor_points');
        Schema::create('skor_points', function (Blueprint $table) {
        $table->increments('id');
            $table->integer('point')->nullable();
            $table->string('status')->nullable();
            $table->string('keterangan')->nullable();
            $table->integer('idUser');
            $table->integer('idTim');
            $table->integer('idSkorSprint');
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
        
        Schema::drop('skor_points');
        Schema::create('skor_points', function (Blueprint $table) {
        $table->increments('id');
            $table->integer('point')->nullable();
            $table->string('status')->nullable();
            $table->string('keterangan')->nullable();
            $table->integer('idUser');
            $table->integer('idTim');
            $table->integer('idSkorSprint');
            $table->timestamps();
        });

        Schema::drop('skor_dosens');
        Schema::create('skor_dosens', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('KetepatanWaktu')->nullable();
            $table->integer('Kelengkapan')->nullable();
            $table->integer('KualitasHasil')->nullable();
            $table->integer('TotalNilai');
            $table->integer('idUser');
            $table->integer('idTim');
            $table->integer('idSkorSprint');
            $table->timestamps();
        });
    }
}
