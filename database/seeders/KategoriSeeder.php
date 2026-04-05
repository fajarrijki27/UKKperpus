<?php

namespace Database\Seeders;

use App\Models\Kategori;
use Illuminate\Database\Seeder;

class KategoriSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

    public function run(): void
    {
        $kategori = [
            'Novel',
            'Teknologi',
            'Sejarah',
            'Pendidikan',
            'Komputer',
            'Pemrograman',
            'Sains',
            'Matematika',
            'Biografi',
            'Agama',
            'Ekonomi',
            'Bahasa',
            'Psikologi',
            'Kesehatan'
        ];

        foreach ($kategori as $item) {
            Kategori::create([
                'nama_kategori' => $item
            ]);
        }
    }
}
