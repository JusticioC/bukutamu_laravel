<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOpdTable extends Migration
{
    public function up()
    {
        Schema::create('opd', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nama');
            $table->string('alamat');
            $table->string('email');
            $table->string('nohp');
            $table->timestamps();
            
            $table->primary('id');
        });
    }

    public function down()
    {
        Schema::dropIfExists('opd');
    }
}
