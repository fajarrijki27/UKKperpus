<?php

namespace Database\Factories;

use App\Models\Anggota;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Anggota>
 */
class AnggotaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $kelas = [
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
        ];

        return [
            'user_id' => \App\Models\User::factory(),
            'nis' => fake()->unique()->numerify('########'),
            'kelas' => fake()->randomElement($kelas),
            'jenis_kelamin' => fake()->randomElement(['Laki-laki', 'Perempuan']),
            'tanggal_lahir' => fake()->date(),
            'no_hp' => fake()->phoneNumber(),
            'alamat' => fake()->address(),
        ];
    }
}
