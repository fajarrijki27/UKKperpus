<x-filament-panels::page wire:poll.10s>
    {{-- SEARCH + FILTER --}}
    <div style="display:flex; flex-wrap:wrap; gap:15px; margin-bottom:20px; align-items:center;">

        {{-- SEARCH --}}
        <input type="text" wire:model.live="search" placeholder="Cari judul atau penulis..." style="
            padding:10px 14px;
            border:1px solid #ddd;
            border-radius:8px;
            width:100%;
            max-width:480px;
            ">

        {{-- FILTER KATEGORI --}}
        <select wire:model.live="kategori" style="
            padding:10px 14px;
            border:1px solid #ddd;
            border-radius:8px;
            width:100%;
            max-width:225px;
            ">

            <option value="">Semua Kategori</option>

            @foreach($this->kategoris as $kategori)
                <option value="{{ $kategori->id }}">
                    {{ $kategori->nama_kategori }}
                </option>
            @endforeach

        </select>

    </div>

    <div style="
        display:grid;
        grid-template-columns:repeat(auto-fill,minmax(220px,1fr));
        gap:20px;
        ">

        @foreach($this->bukus as $buku)

            <div style="
                                                                                                                        background:white;
                                                                                                                        border-radius:10px;
                                                                                                                        padding:15px;
                                                                                                                        box-shadow:8px 8px 8px rgba(0,0,0,0.08);
                                                                                                                        display:flex;
                                                                                                                        flex-direction:column;
                                                                                                                        ">

                <img src="{{ asset('storage/' . $buku->cover) }}" style="
                                                                                                                        width:100%;
                                                                                                                        height:220px;
                                                                                                                        object-fit:cover;
                                                                                                                        border:1px solid black;
                                                                                                                        border-radius:8px;
                                                                                                                        ">

                <div style="margin-top:10px; flex:1">

                    <b>{{ $buku->judul }}</b>

                    <div style="font-size:14px; color:gray">
                        Penulis: {{ $buku->penulis }}
                    </div>

                    <div style="font-size:14px">
                        Kategori: {{ $buku->kategori->nama_kategori }}
                    </div>

                    <div style="font-size: 14px; margin-top: 4px;">
                        Stok: {{ $buku->stok }}

                        @if($buku->stok == 0)
                            <div style="color:red; font-size:12px;">
                                Buku sedang dipinjam
                            </div>
                        @endif
                    </div>

                </div>

                <x-filament::button wire:click="addToCart({{ $buku->id }})" :disabled="$buku->stok == 0 || $this->hasActiveLoan" color="{{ ($buku->stok == 0 || $this->hasActiveLoan) ? 'gray' : 'primary' }}"
                    style="margin-top:10px; width:100%">

                    @if($this->hasActiveLoan)
                        Selesaikan Peminjaman Dulu
                    @elseif($buku->stok == 0)
                        Sedang Dipinjam
                    @else
                        Tambah ke Keranjang
                    @endif

                </x-filament::button>

            </div>

        @endforeach

    </div>

    <div style="
        margin-top:30px;
        display:flex;
        flex-wrap:wrap;
        justify-content:space-between;
        align-items:center;
        gap:15px;
        ">

        {{-- INFO DATA --}}
        <div style="
            font-size:14px;
            color:gray;
            flex:1 1 250px;
            ">
            Showing {{ $this->bukus->firstItem() }}
            sampai
            {{ $this->bukus->lastItem() }}
            dari
            {{ $this->bukus->total() }} buku
        </div>

        {{-- PAGINATION --}}
        <div style="
            display:flex;
            flex-wrap:wrap;
            gap:8px;
            justify-content:flex-end;
            flex:1 1 250px;
            ">

            {{-- Previous --}}
            @if ($this->bukus->onFirstPage())
                <span style="padding:6px 12px; background:#eee; border-radius:6px;">
                    Prev
                </span>
            @else
                <button wire:click="previousPage"
                    style="padding:6px 12px; background:#f59e0b; color:white; border-radius:6px;">
                    Prev
                </button>
            @endif

            {{-- Page number --}}
            @php
                $current = $this->bukus->currentPage();
                $last = $this->bukus->lastPage();
            @endphp

            {{-- FIRST PAGE --}}
            <button wire:click="gotoPage(1)" style="
        padding:6px 12px;
        border-radius:6px;
        background: {{ $current == 1 ? '#f59e0b' : '#eee' }};
        color: {{ $current == 1 ? 'white' : 'black' }};
    ">
                1
            </button>

            {{-- DOTS AWAL --}}
            @if ($current > 3)
                <span style="padding:6px;">...</span>
            @endif

            {{-- MIDDLE --}}
            @for ($i = max(2, $current - 1); $i <= min($last - 1, $current + 1); $i++)
                    <button wire:click="gotoPage({{ $i }})" style="
                    padding:6px 12px;
                    border-radius:6px;
                    background: {{ $current == $i ? '#f59e0b' : '#eee' }};
                    color: {{ $current == $i ? 'white' : 'black' }};
                ">
                        {{ $i }}
                    </button>
            @endfor

            {{-- DOTS AKHIR --}}
            @if ($current < $last - 2)
                <span style="padding:6px;">...</span>
            @endif

            {{-- LAST PAGE --}}
            @if ($last > 1)
                    <button wire:click="gotoPage({{ $last }})" style="
                    padding:6px 12px;
                    border-radius:6px;
                    background: {{ $current == $last ? '#f59e0b' : '#eee' }};
                    color: {{ $current == $last ? 'white' : 'black' }};
                ">
                        {{ $last }}
                    </button>
            @endif

            {{-- Next --}}
            @if ($this->bukus->hasMorePages())
                <button wire:click="nextPage" style="padding:6px 12px; background:#f59e0b; color:white; border-radius:6px;">
                    Next
                </button>
            @else
                <span style="padding:6px 12px; background:#eee; border-radius:6px;">
                    Next
                </span>
            @endif

        </div>

    </div>

</x-filament-panels::page>
@push('scripts')
    <script>
        document.addEventListener('livewire:init', () => {
            Livewire.on('open-struk', (event) => {
                const url = event[0].url;

                window.open(url, '_blank');
            });
        });
    </script>
@endpush