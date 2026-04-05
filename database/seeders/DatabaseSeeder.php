<?php

namespace Database\Seeders;

use App\Models\Anggota;
use App\Models\Buku;
use App\Models\Peminjaman;
use App\Models\DetailPeminjaman;
use App\Models\Pengembalian;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\Kategori;
use Carbon\Carbon;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // =====================
        // USER DEFAULT
        // =====================
        User::create([
            'name' => 'Super Admin',
            'email' => 'superadmin@gmail.com',
            'password' => Hash::make('password')
        ]);

        // =====================
        // USER + ANGGOTA
        // =====================
        $users = User::factory(50)->create();

        $anggotas = collect();

        foreach ($users as $user) {
            $anggotas->push(
                Anggota::factory()->create([
                    'user_id' => $user->id
                ])
            );
        }

        // =====================
        // KATEGORI
        // =====================
        $this->call(KategoriSeeder::class);

        // ambil kategori
        $kategoris = Kategori::all();

        // =====================
        // BUKU
        // =====================
        $bukus = Buku::factory(100)->state(function () use ($kategoris) {
            return [
                'kategori_id' => $kategoris->random()->id
            ];
        })->create();

        // =====================
        // PEMINJAMAN + DETAIL
        // =====================
        foreach ($anggotas as $anggota) {

            // tiap anggota punya banyak transaksi
            $peminjamans = Peminjaman::factory(rand(3, 7))->create([
                'anggota_id' => $anggota->id
            ]);

            foreach ($peminjamans as $pinjam) {

                // jumlah buku per transaksi
                $jumlahBuku = rand(1, 4);

                for ($i = 0; $i < $jumlahBuku; $i++) {
                    DetailPeminjaman::create([
                        'peminjaman_id' => $pinjam->id,
                        'buku_id' => $bukus->random()->id,
                        'qty' => rand(1, 2),
                    ]);
                }

                // =====================
                // PENGEMBALIAN
                // =====================
                if ($pinjam->status === 'dikembalikan') {

                    $tanggalKembali = Carbon::parse($pinjam->tanggal_pinjam)
                        ->addDays(rand(1, 10));

                    $jatuhTempo = Carbon::parse($pinjam->tanggal_jatuh_tempo);

                    $terlambat = $tanggalKembali->gt($jatuhTempo)
                        ? $jatuhTempo->diffInDays($tanggalKembali)
                        : 0;

                    Pengembalian::create([
                        'peminjaman_id' => $pinjam->id,
                        'tanggal_kembali' => $tanggalKembali,
                        'denda' => $terlambat * 1000,
                    ]);
                }
            }
        }
    }
}
