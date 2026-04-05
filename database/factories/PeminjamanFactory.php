<?php

namespace Database\Factories;

use App\Models\Peminjaman;
use App\Models\Anggota;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Peminjaman>
 */
class PeminjamanFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $tanggalPinjam = fake()->dateTimeBetween('-2 months', 'now');

        return [
            'kode_peminjaman' => 'IGZ-' . strtoupper(fake()->unique()->bothify('####??')),
            'anggota_id' => Anggota::factory(), // 🔥
            'tanggal_pinjam' => $tanggalPinjam,
            'tanggal_jatuh_tempo' => (clone $tanggalPinjam)->modify('+7 days'),
            'status' => fake()->randomElement(['dipinjam', 'dikembalikan']),
        ];
    }
}
