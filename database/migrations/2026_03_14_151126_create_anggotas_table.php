<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('anggotas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')
                ->constrained()
                ->cascadeOnDelete();

            $table->string('nis')->unique()->nullable();

            $table->enum('kelas', [
                'X-TP',
                'X-TKR',
                'X-TBSM',
                'X-TJKT',
                'X-PPLG',
                'XI-TP',
                'XI-TKR',
                'XI-TBSM',
                'XI-TJKT',
                'XI-PPLG',
                'XII-TP',
                'XII-TKR',
                'XII-TBSM',
                'XII-TJKT',
                'XII-PPLG',
            ])->nullable();
            
            $table->enum('jenis_kelamin', ['Laki-laki', 'Perempuan']);
            $table->date('tanggal_lahir');
            $table->string('no_hp')->nullable();
            $table->text('alamat')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('anggotas');
    }
};
