<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
//class AddDefaultValueToTanggalColumn extends Migration

{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('tbl_pengunjung', function (Blueprint $table) {
            $table->date('tanggal')->default(DB::raw('CURRENT_DATE'))->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('tbl_pengunjung', function (Blueprint $table) {
            //$table->dropColumn('tanggal');
        });
    }
};
