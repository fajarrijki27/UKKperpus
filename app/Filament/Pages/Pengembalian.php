<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use App\Models\Peminjaman;
use App\Models\Pengembalian as PengembalianModel;
use Filament\Notifications\Notification;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;
use Carbon\Carbon;

class Pengembalian extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-arrow-left-on-rectangle';
    protected static string $view = 'filament.pages.pengembalian';
    protected static ?string $navigationGroup = 'Transaksi';
    protected static ?string $navigationLabel = 'Konfirmasi Atau Pengembalian Buku';
    protected static ?string $title = 'Konfirmasi Atau Pengembalian Buku Perpustakaan';
    public $pengembalianId = null;
    public $kode = '';
    public $peminjaman = null;
    public $denda = 0;
    public $keterangan = '';
    public static function canAccess(): bool
    {
        return Gate::allows('page_Pengembalian');
    }

    // 🔍 auto detect saat input berubah
    public function updatedKode()
    {
        $this->cariPeminjaman();
    }

    public function cariPeminjaman()
    {
        $this->peminjaman = Peminjaman::with('details.buku')
            ->where('kode_peminjaman', $this->kode)
            ->first();

        if ($this->peminjaman) {
            $this->denda = 0; // default kosong,
        }
    }

    public function kembalikan()
    {
        if (!$this->peminjaman) {
            Notification::make()
                ->title('Data tidak ditemukan')
                ->danger()
                ->send();
            return;
        }

        if ($this->peminjaman->status === 'dikembalikan') {
            Notification::make()
                ->title('Sudah dikembalikan')
                ->warning()
                ->send();
            return;
        }

        DB::transaction(function () {

            //  kembalikan stok
            foreach ($this->peminjaman->details as $detail) {
                $detail->buku->increment('stok', $detail->qty);
            }

            //  update status
            $this->peminjaman->update([
                'status' => 'dikembalikan'
            ]);

            //  simpan pengembalian + denda
            $pengembalian = PengembalianModel::create([
                'peminjaman_id' => $this->peminjaman->id,
                'tanggal_kembali' => now(),
                'denda' => $this->denda,
                'keterangan' => $this->keterangan, // 🔥 tambah ini
            ]);

            $this->pengembalianId = $pengembalian->id;
        });

        Notification::make()
            ->title('Buku berhasil dikembalikan')
            ->body('Denda: Rp ' . number_format($this->denda, 0, ',', '.'))
            ->success()
            ->send();

        // reset state
        $this->reset(['kode', 'denda', 'keterangan']);
    }

    public function konfirmasiPeminjaman($peminjamanId)
    {
        $peminjaman = Peminjaman::findOrFail($peminjamanId);

        if ($peminjaman->status !== 'diproses') {
            return;
        }

        $peminjaman->update([
            'status' => 'dipinjam'
        ]);

        Notification::make()
            ->title('Peminjaman dikonfirmasi')
            ->success()
            ->send();

        // 🔥 RESET AGAR UI KOSONG LAGI
        $this->reset(['kode', 'peminjaman']);
    }
}
