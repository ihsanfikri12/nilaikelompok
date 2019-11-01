<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Editdb extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('skor_dosens', function (Blueprint $table) {
            $table->integer('sprint')->after('TotalNilai');
            $table->integer('idSkorSprint')->nullable()->change();
        });

        Schema::table('skor_points', function (Blueprint $table) {
            $table->integer('sprint')->after('keterangan');
            $table->integer('idSkorSprint')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        
    }
}
