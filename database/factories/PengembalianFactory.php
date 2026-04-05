<?php

namespace Database\Factories;

use App\Models\Pengembalian;
use App\Models\Peminjaman;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Pengembalian>
 */
class PengembalianFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $peminjaman = Peminjaman::inRandomOrder()->first();

        $tanggalKembali = fake()->dateTimeBetween(
            $peminjaman->tanggal_pinjam,
            '+10 days'
        );

        $jatuhTempo = Carbon::parse($peminjaman->tanggal_jatuh_tempo);
        $kembali = Carbon::parse($tanggalKembali);

        $terlambat = $kembali->greaterThan($jatuhTempo)
            ? $jatuhTempo->diffInDays($kembali)
            : 0;

        return [
            'peminjaman_id' => Peminjaman::factory(),
            'tanggal_kembali' => fake()->date(),
            'denda' => fake()->numberBetween(0, 5000),
        ];
    }
}
