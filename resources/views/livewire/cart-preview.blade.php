<div wire:key="cart-component">

    @php
        $cart = session('cart', []);
    @endphp

    <div style="display:flex; flex-direction:column; gap:15px;">

        @if($this->cartBooks->count() == 0)

            <div style="text-align:center; color:gray; padding:20px;">
                Keranjang masih kosong
            </div>

        @else

            @foreach($this->cartBooks as $buku)

                <div style="display:flex; gap:12px; align-items:center; border-bottom:1px solid #eee; padding-bottom:12px;">

                    <img src="{{ asset('storage/' . $buku->cover) }}"
                        style="width:60px;height:80px;object-fit:cover;border-radius:6px;border:1px solid black;">

                    <div style="flex:1">

                        <div style="font-weight:600">
                            {{ $buku->judul }}
                        </div>

                        <div style="font-size:13px;color:gray">
                            Penulis: {{ $buku->penulis }}
                        </div>

                        <div style="font-size:13px; color:black;">
                            Stok tersedia: {{ $buku->stok }}
                        </div>

                        <div
                            style="
                                                                                                                                                                        display:flex;
                                                                                                                                                                        align-items:center;
                                                                                                                                                                        gap:6px;
                                                                                                                                                                        margin-top:24px;
                                                                                                                                                                        ">

                            {{-- MINUS --}}
                            <button wire:click.prevent="decreaseQty({{ $buku->id }})"
                                style="
                                                                                                                                                                                width:28px;
                                                                                                                                                                                height:28px;
                                                                                                                                                                                border-radius:6px;
                                                                                                                                                                                background:#eee;
                                                                                                                                                                                ">
                                -
                            </button>

                            {{-- INPUT QTY --}}
                            <input type="number" min="1" max="{{ $buku->stok }}" wire:model.lazy="quantities.{{ $buku->id }}"
                                wire:change="updateQty({{ $buku->id }})"
                                style="
                                                                                                                                                        width:60px;
                                                                                                                                                        text-align:center;
                                                                                                                                                        padding:4px;
                                                                                                                                                        border:1px solid #ddd;
                                                                                                                                                        border-radius:6px;
                                                                                                                                                    ">

                            {{-- PLUS --}}
                            <button wire:click.prevent="increaseQty({{ $buku->id }})"
                                style="
                                                                                                                                                                                width:28px;
                                                                                                                                                                                height:28px;
                                                                                                                                                                                border-radius:6px;
                                                                                                                                                                                background:#f59e0b;
                                                                                                                                                                                color:white;
                                                                                                                                                                                ">
                                +
                            </button>

                        </div>

                    </div>

                    <x-filament::button color="danger" size="sm" wire:click.prevent="removeFromCart({{ $buku->id }})">
                        Hapus
                    </x-filament::button>

                </div>

            @endforeach

            <div style="
                            margin-top:20px;
                            padding-top:15px;
                            border-top:1px solid #eee;
                            display:flex;
                            justify-content:space-between;
                            align-items:center;
                            ">

                {{-- TOTAL BUKU --}}
                <div style="font-weight:600; font-size:15px;">
                    Total Buku: {{ $this->totalBuku }}
                </div>

                {{-- BUTTON PINJAM --}}
                <x-filament::button color="success" size="md" wire:click="pinjamBuku" :disabled="$this->totalBuku == 0">

                    Pinjam Buku
                </x-filament::button>

            </div>

            <div style="
                                            margin-top:20px;
                                            padding:15px;
                                            background:#f9fafb;
                                            border-radius:8px;
                                            font-size:13px;
                                            ">

                <div style="font-weight:600; margin-bottom:8px;">
                    Peraturan Peminjaman
                </div>

                <ul style="padding-left:18px; line-height:1.6;">
                    <li>Batas waktu peminjaman adalah 7 hari.</li>
                    <li>Denda keterlambatan pengembalian akan dikenakan sesuai ketentuan perpustakaan.</li>
                    <li>Buku yang rusak atau hilang menjadi tanggung jawab peminjam.</li>
                    <li>Pastikan buku dikembalikan tepat waktu.</li>
                </ul>

            </div>
        @endif

    </div>
</div>