<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class NepalData extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('data_covid', function (Blueprint $table) {
            $table->id();
            $table->string('update_date');
            $table->integer('confirmed');
            $table->integer('isolation');
            $table->integer('death');
            $table->integer('icu');
            $table->integer('occupied_icu');
            $table->integer('ventilator');
            $table->integer('occupied_ventilator');
            $table->integer('isolation_bed');
            $table->integer('occupied_isolation_bed');
            $table->integer('tested');
            $table->integer('facility_count');
            $table->integer('hotline');
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
