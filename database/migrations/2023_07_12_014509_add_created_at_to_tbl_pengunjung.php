<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('tbl_pengunjung', function (Blueprint $table) {
            $table->timestamp('created_at')->nullable(); // Menambahkan kolom "created_at" dengan tipe timestamp
           // $table->timestamp('created_at'); // Menambahkan kolom "created_at" dengan tipe timestamp

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('tbl_pengunjung', function (Blueprint $table) {
            //
        });
    }
};