<?php

namespace Database\Factories;

use App\Models\Buku;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Buku>
 */
class BukuFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'kategori_id' => null,
            'kode_buku' => 'BK-' . fake()->unique()->numberBetween(1000, 9999),
            'isbn' => fake()->isbn13(),
            'judul' => fake()->sentence(3),
            'penulis' => fake()->name(),
            'penerbit' => fake()->company(),
            'tahun_terbit' => fake()->numberBetween(2000, 2024),
            'rak' => 'Rak-' . fake()->randomLetter(),
            'cover' => 'covers/book' . fake()->numberBetween(1, 5) . '.jpg',
            'stok' => fake()->numberBetween(1, 10),
        ];
    }
}
