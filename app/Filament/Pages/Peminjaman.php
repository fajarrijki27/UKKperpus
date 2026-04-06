<?php

namespace App\Filament\Pages;

use App\Models\Anggota;
use App\Models\Kategori;
use Filament\Actions\Action;
use Filament\Notifications\Notification;
use Filament\Pages\Page;
use Illuminate\Support\Facades\Gate;
use App\Models\Buku;
use Livewire\WithPagination;

class Peminjaman extends Page
{
    use WithPagination;
    protected static ?string $navigationIcon = 'heroicon-o-arrow-right-on-rectangle';
    protected static ?string $navigationGroup = 'Transaksi';
    protected static ?string $title = 'Peminjaman Buku Perpustakaan';
    protected static string $view = 'filament.pages.peminjaman';
    protected $paginationTheme = 'tailwind';
    public $search = '';
    public $kategori = '';
    public static function canAccess(): bool
    {
        return Gate::allows('page_Peminjaman');
    }
    public function getBukusProperty()
    {
        return Buku::query()
            ->when($this->search, function ($query) {
                $query->where(function ($q) {
                    $q->where('judul', 'like', '%' . $this->search . '%')
                        ->orWhere('penulis', 'like', '%' . $this->search . '%');
                });
            })
            ->when($this->kategori, function ($query) {
                $query->where('kategori_id', $this->kategori);
            })
            ->paginate(20);
    }

    public function getKategorisProperty()
    {
        return Kategori::all();
    }

    public function updatingSearch()
    {
        $this->resetPage();
    }

    public function updatingKategori()
    {
        $this->resetPage();
    }

    public function addToCart($bukuId)
    {
        $user = auth()->user();
        $cart = session()->get('cart', []);

        $totalBuku = collect($cart)->sum('qty');

        if ($user->hasRole('Anggota') && $totalBuku >= 1) {
            Notification::make()
                ->title('Batas tercapai')
                ->body('Anggota hanya boleh meminjam 1 buku')
                ->warning()
                ->send();
            return;
        }

        // ambil anggota
        $anggota = Anggota::where('user_id', $user->id)->first();

        // kalau belum punya data anggota
        if (!$anggota) {
            Notification::make()
                ->title('Data anggota belum lengkap')
                ->danger()
                ->send();
            return;
        }

        //  CEK PEMINJAMAN AKTIF
        $peminjamanAktif = \App\Models\Peminjaman::where('anggota_id', $anggota->id)
            ->whereIn('status', ['dipinjam', 'diproses'])
            ->exists();

        if ($peminjamanAktif) {
            Notification::make()
                ->title('Masih ada peminjaman aktif')
                ->body('Selesaikan atau kembalikan buku terlebih dahulu sebelum meminjam lagi.')
                ->danger()
                ->send();

            return;
        }

        // ============================
        $cart = session()->get('cart', []);
        $buku = Buku::find($bukuId);

        // stok habis
        if ($buku->stok == 0) {
            Notification::make()
                ->title('Buku sedang dipinjam')
                ->body('Stok buku saat ini tidak tersedia.')
                ->danger()
                ->send();
            return;
        }

        // sudah ada di cart
        if (isset($cart[$bukuId])) {
            Notification::make()
                ->title('Buku sudah ada di keranjang')
                ->body('Silakan buka keranjang untuk mengatur jumlah.')
                ->warning()
                ->send();
            return;
        }

        // tambah ke cart
        $cart[$bukuId] = [
            'qty' => 1
        ];

        session()->put('cart', $cart);

        Notification::make()
            ->title('Berhasil ditambahkan ke keranjang')
            ->success()
            ->send();
    }

    public function getCartCountProperty()
    {
        $cart = session()->get('cart', []);

        return collect($cart)->sum('qty');
    }

    public function getCartBooksProperty()
    {
        $cart = session()->get('cart', []);

        if (empty($cart)) {
            return collect();
        }

        return Buku::whereIn('id', array_keys($cart))->get();
    }

    public function getHasActiveLoanProperty()
    {
        $user = auth()->user();

        $anggota = Anggota::where('user_id', $user->id)->first();

        if (!$anggota)
            return false;

        return \App\Models\Peminjaman::where('anggota_id', $anggota->id)
            ->whereIn('status', ['dipinjam', 'diproses'])
            ->exists();
    }
    protected function getHeaderActions(): array
    {
        return [
            Action::make('cart')
                ->label('Keranjang')
                ->icon('heroicon-o-shopping-cart')
                ->badge(fn() => $this->cartCount)
                ->badgeColor('danger')
                ->modalHeading('Keranjang Peminjaman')
                ->modalSubmitAction(false)
                ->modalCancelActionLabel('Tutup')
                ->modalContent(view('filament.pages.cart-preview')),
        ];
    }
}
