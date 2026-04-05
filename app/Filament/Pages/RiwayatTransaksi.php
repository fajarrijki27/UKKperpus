<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use App\Models\Peminjaman;
use Livewire\WithPagination;
use Illuminate\Support\Facades\Gate;

class RiwayatTransaksi extends Page
{
    use WithPagination;
    protected static ?string $navigationIcon = 'heroicon-o-clock';
    protected static string $view = 'filament.pages.riwayat-transaksi';
    protected static ?string $navigationLabel = 'Riwayat';
    protected static ?string $title = 'Riwayat Transaksi';
    protected $paginationTheme = 'tailwind';
    public $search = '';
    public $status = '';
    public $tanggal = '';
    public $user = '';
    public $showModal = false;
    public $selected = null;
    public static function canAccess(): bool
    {
        return Gate::allows('page_RiwayatTransaksi');
    }
    public function getDataProperty()
    {
        $user = auth()->user();

        return Peminjaman::with([
            'anggota.user',
            'details',
            'pengembalian'
        ])

            // 🔒 BATASI DATA UNTUK ANGOTA & GURU
            ->when(
                $user->hasAnyRole(['Anggota', 'Guru']),
                function ($query) use ($user) {
                    $query->whereHas('anggota', function ($q) use ($user) {
                        $q->where('user_id', $user->id);
                    });
                }
            )

            // 🔍 SEARCH KODE
            ->when($this->search, function ($query) {
                $query->where('kode_peminjaman', 'like', '%' . $this->search . '%');
            })

            // 📊 STATUS
            ->when($this->status, function ($query) {
                $query->where('status', $this->status);
            })

            // 📅 TANGGAL
            ->when($this->tanggal, function ($query) {
                $query->whereDate('tanggal_pinjam', $this->tanggal);
            })

            // 👤 FILTER USER (HANYA ADMIN / NON ANGOTA & GURU)
            ->when(
                !$user->hasAnyRole(['Anggota', 'Guru']) && $this->user,
                function ($query) {
                    $query->whereHas('anggota.user', function ($q) {
                        $q->where('name', 'like', '%' . $this->user . '%');
                    });
                }
            )

            ->latest()
            ->paginate(10);
    }

    public function resetFilter()
    {
        $this->reset(['search', 'status', 'tanggal', 'user']);
        $this->resetPage();
    }

    public function lihat($id)
    {
        $this->selected = Peminjaman::with([
            'anggota.user',
            'details.buku',
            'pengembalian'
        ])->find($id);

        $this->showModal = true;
    }
}
