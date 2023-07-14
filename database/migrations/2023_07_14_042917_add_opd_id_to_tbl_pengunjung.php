<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddOpdIdToTblPengunjung extends Migration
{
    public function up()
    {
        Schema::table('tbl_pengunjung', function (Blueprint $table) {
            $table->unsignedInteger('id_opd')->after('saran')->nullable();
            $table->foreign('id_opd')->references('id')->on('opd');
        });
    }

    public function down()
    {
        Schema::table('tbl_pengunjung', function (Blueprint $table) {
            $table->dropForeign(['id_opd']);
            $table->dropColumn('id_opd');
        });
    }
}
