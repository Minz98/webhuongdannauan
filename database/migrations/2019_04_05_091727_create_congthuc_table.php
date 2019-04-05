<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCongthucTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('congthuc', function (Blueprint $table) {
            $table->bigIncrements('congthuc_id');
            $table->string('user_id');
            $table->string('tieude');
            $table->text('anhgioithieu');
            $table->string('thoigianthuchien');
            $table->integer('khauphan');
            $table->string('thoigianchuanbi');
            $table->string('capdo');
            $table->text('nguyenlieu');
            $table->text('cachlam');
            $table->integer('noibat');
            $table->integer('songuoixem');
            $table->string('loai_id');
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
        Schema::dropIfExists('congthuc');
    }
}
