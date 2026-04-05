<?php

namespace App\Livewire;

use Illuminate\Support\Facades\DB;
use App\Models\DetailPeminjaman;
use App\Models\Anggota;
use App\Models\Peminjaman;
use Illuminate\Support\Str;
use Filament\Notifications\Notification;
use Livewire\Component;
use App\Models\Buku;

class CartPreview extends Component
{
    public $quantities = [];
    public $redirectUrl = null;
    public function mount()
    {
        $cart = session()->get('cart', []);

        foreach ($cart as $id => $item) {
            $this->quantities[$id] = $item['qty'];
        }
    }
    public function getCartBooksProperty()
    {
        $cart = session()->get('cart', []);

        if (empty($cart)) {
            return collect();
        }

        return Buku::whereIn('id', array_keys($cart))->get();
    }

    public function updateQty($bukuId)
    {
        $cart = session()->get('cart', []);
        $buku = Buku::find($bukuId);

        $value = (int) $this->quantities[$bukuId];

        if ($value < 1) {
            $value = 1;
        }

        if ($value > $buku->stok) {

            Notification::make()
                ->title('Stok buku tidak mencukupi')
                ->body('Jumlah melebihi stok yang tersedia')
                ->danger()
                ->send();

            $value = $buku->stok;
        }

        $cart[$bukuId]['qty'] = $value;
        $this->quantities[$bukuId] = $value;

        session()->put('cart', $cart);
    }

    public function increaseQty($bukuId)
    {
        $cart = session()->get('cart', []);
        $buku = Buku::find($bukuId);

        if ($cart[$bukuId]['qty'] >= $buku->stok) {

            Notification::make()
                ->title('Stok buku tidak mencukupi')
                ->body('Jumlah melebihi stok yang tersedia')
                ->danger()
                ->send();

            return;
        }

        $cart[$bukuId]['qty']++;

        $this->quantities[$bukuId] = $cart[$bukuId]['qty'];

        session()->put('cart', $cart);
    }

    public function decreaseQty($bukuId)
    {
        $cart = session()->get('cart', []);

        if ($cart[$bukuId]['qty'] > 1) {
            $cart[$bukuId]['qty']--;
        }

        $this->quantities[$bukuId] = $cart[$bukuId]['qty'];

        session()->put('cart', $cart);
    }

    public function removeFromCart($bukuId)
    {
        $cart = session()->get('cart', []);

        unset($cart[$bukuId]);

        session()->put('cart', $cart);
    }

    public function getTotalBukuProperty()
    {
        $cart = session()->get('cart', []);

        return collect($cart)->sum('qty');
    }

    private function generateKode()
    {
        do {
            $kode = 'IGZ-' . strtoupper(Str::random(8));
        } while (Peminjaman::where('kode_peminjaman', $kode)->exists());

        return $kode;
    }

    public function pinjamBuku()
    {
        $user = auth()->user();

        $anggota = Anggota::where('user_id', $user->id)->first();

        if (!$anggota) {
            Notification::make()
                ->title('Data anggota belum lengkap')
                ->body('Silahkan lengkapi terlebih dahulu data Anggota')
                ->danger()
                ->send();
            return;
        }

        $cart = session()->get('cart', []);

        if (empty($cart)) {
            Notification::make()
                ->title('Keranjang kosong')
                ->danger()
                ->send();
            return;
        }

        // 🔥 penting: deklarasi di luar
        $peminjaman = null;

        $user = auth()->user();

        // hitung total buku di cart
        $totalBuku = collect($cart)->sum('qty');

        // BATASI ANGGOTA
        if ($user->hasRole('Anggota') && $totalBuku > 1) {
            Notification::make()
                ->title('Batas Peminjaman')
                ->body('Anggota hanya boleh meminjam 1 buku saja')
                ->danger()
                ->send();
            return;
        }

        DB::transaction(function () use ($cart, $anggota, &$peminjaman) {

            // 1. master
            $peminjaman = Peminjaman::create([
                'anggota_id' => $anggota->id,
                'kode_peminjaman' => $this->generateKode(),
                'tanggal_pinjam' => now(),
                'tanggal_jatuh_tempo' => now()->addDays(7),
                'status' => 'diproses',
            ]);

            // 2. detail
            foreach ($cart as $bukuId => $item) {

                $buku = Buku::find($bukuId);

                if ($buku->stok < $item['qty']) {
                    throw new \Exception("Stok {$buku->judul} tidak cukup");
                }

                DetailPeminjaman::create([
                    'peminjaman_id' => $peminjaman->id,
                    'buku_id' => $bukuId,
                    'qty' => $item['qty'],
                ]);

                $buku->decrement('stok', $item['qty']);
            }
        });

        // reset cart
        session()->forget('cart');
        $this->quantities = [];

        // set redirect url
        $this->dispatch('open-struk', [
            'url' => route('peminjaman.struk', $peminjaman->id)
        ]);

        Notification::make()
            ->title('Peminjaman berhasil')
            ->success()
            ->send();
    }

    public function render()
    {
        return view('livewire.cart-preview');
    }
}