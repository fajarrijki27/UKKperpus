<x-filament-panels::page>

    <div style="
        background:white;
        padding:20px;
        border-radius:12px;
        box-shadow:0 6px 16px rgba(0,0,0,0.05);
    ">

        <div style="display:flex; flex-wrap:wrap; gap:20px; margin-bottom:15px;">

            {{-- SEARCH KODE --}}
            <input type="text" wire:model.live="search" placeholder="Cari kode..."
                style="padding:8px; border:1px solid #ddd; border-radius:8px;">

            {{-- USER --}}
            @if(!auth()->user()->hasAnyRole(['Anggota', 'Guru']))
                <input type="text" wire:model.live="user" placeholder="Cari nama user..."
                    style="padding:8px; border:1px solid #ddd; border-radius:8px;">
            @endif

            {{-- STATUS --}}
            <select wire:model.live="status"
                style="padding:8px; border:1px solid #ddd; border-radius:8px; width: 200px;">
                <option value="">Semua Status</option>
                <option value="dipinjam">Dipinjam</option>
                <option value="dikembalikan">Dikembalikan</option>
            </select>

            {{-- TANGGAL --}}
            <input type="date" wire:model.live="tanggal" style="padding:8px; border:1px solid #ddd; border-radius:8px;">

            {{-- RESET --}}
            <button wire:click="resetFilter"
                style="padding:8px 12px; background:#ef4444; color:white; border-radius:8px;">
                Reset
            </button>

        </div>

        <table style="width:100%; border-collapse:collapse; font-size:14px;">

            <thead>
                <tr style="background:#f9fafb; text-align:left;">
                    <th style="padding:10px;">Kode</th>
                    <th>Nama</th>
                    <th>Tanggal Pinjam</th>
                    <th>Tanggal Jatuh Tempo</th>
                    <th>Tanggal Kembali</th>
                    <th>Status</th>
                    <th>Total Buku</th>
                    <th>Denda</th>
                    <th>Aksi</th>
                </tr>
            </thead>

            <tbody>

                @forelse($this->data as $item)
                    @php
                        $telatHari = 0;

                        if ($item->status == 'dikembalikan' && $item->pengembalian) {
                            $jatuhTempo = \Carbon\Carbon::parse($item->tanggal_jatuh_tempo);
                            $tanggalKembali = \Carbon\Carbon::parse($item->pengembalian->tanggal_kembali);

                            $telatJam = $jatuhTempo->diffInHours($tanggalKembali, false);
                            $telatHari = $telatJam > 0 ? ceil($telatJam / 24) : 0;
                        }
                    @endphp

                    <tr style="border-bottom:1px solid #eee;">

                        {{-- KODE --}}
                        <td style="padding:10px; font-weight:600;">
                            {{ $item->kode_peminjaman }}
                        </td>

                        {{-- NAMA --}}
                        <td>
                            {{ $item->anggota->user->name }}
                        </td>

                        {{-- TANGGAL --}}
                        <td>
                            {{ \Carbon\Carbon::parse($item->tanggal_pinjam)->format('d M Y') }}
                        </td>

                        <td>
                            {{ \Carbon\Carbon::parse($item->tanggal_jatuh_tempo)->format('d M Y') }}
                        </td>

                        <td>
                            @if($item->status == 'dikembalikan' && $item->pengembalian)

                                {{ \Carbon\Carbon::parse($item->pengembalian->tanggal_kembali)->format('d M Y') }}

                                @if($telatHari > 0)
                                    <div style="color:#dc2626; font-size:12px;">
                                        Terlambat {{ $telatHari }} hari
                                    </div>
                                @else
                                    <div style="color:#16a34a; font-size:12px;">
                                        Tepat waktu
                                    </div>
                                @endif

                            @else
                                <span style="color:gray; font-size:13px;">
                                    -
                                </span>
                            @endif
                        </td>

                        {{-- STATUS --}}
                        <td>
                            <span style="
                                                                                                                        padding:4px 10px;
                                                                                                                        border-radius:999px;
                                                                                                                        font-size:12px;
                                                                                                                        background: {{ $item->status == 'dikembalikan' ? '#dcfce7' : '#fef3c7' }};
                                                                                                                        color: {{ $item->status == 'dikembalikan' ? '#16a34a' : '#d97706' }};
                                                                                                                    ">
                                {{ $item->status }}
                            </span>
                        </td>

                        {{-- TOTAL BUKU --}}
                        <td>
                            {{ $item->details->sum('qty') }}
                        </td>

                        {{-- DENDA --}}
                        <td>
                            Rp {{ number_format(optional($item->pengembalian)->denda ?? 0, 0, ',', '.') }}
                        </td>

                        {{-- AKSI --}}
                        <td>
                            @if($item->pengembalian)
                                <x-filament::button size="sm" wire:click="lihat({{ $item->id }})">
                                    Lihat
                                </x-filament::button>
                            @endif
                        </td>

                    </tr>

                @empty

                    <tr>
                        <td colspan="7" style="text-align:center; padding:20px; color:gray;">
                            Belum ada transaksi
                        </td>
                    </tr>

                @endforelse

            </tbody>

        </table>

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
                Showing {{ $this->data->firstItem() }}
                sampai
                {{ $this->data->lastItem() }}
                dari
                {{ $this->data->total() }} data
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
                @if ($this->data->onFirstPage())
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
                    $current = $this->data->currentPage();
                    $last = $this->data->lastPage();
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

                {{-- DOTS (awal) --}}
                @if ($current > 3)
                    <span style="padding:6px;">...</span>
                @endif

                {{-- MIDDLE PAGES --}}
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

                {{-- DOTS (akhir) --}}
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
                @if ($this->data->hasMorePages())
                    <button wire:click="nextPage"
                        style="padding:6px 12px; background:#f59e0b; color:white; border-radius:6px;">
                        Next
                    </button>
                @else
                    <span style="padding:6px 12px; background:#eee; border-radius:6px;">
                        Next
                    </span>
                @endif

            </div>

        </div>

    </div>


    @if($showModal && $selected)
        <div wire:click="$set('showModal', false)" style="
                        position:fixed;
                        inset:0;
                        background:rgba(0,0,0,0.4);
                        display:flex;
                        align-items:center;
                        justify-content:center;
                        z-index:999;
                    ">

            <div wire:click.stop style="
                background:white;
                padding:28px;
                border-radius:14px;
                width:100%;
                max-width:650px;
                max-height:90vh;
                overflow-y:auto;
                scrollbar-width: none;
                box-shadow:0 10px 25px rgba(0,0,0,0.15);
            ">

                {{-- HEADER --}}
                <div style="
                                                display:flex;
                                                justify-content:space-between;
                                                align-items:center;
                                                margin-bottom:20px;
                                            ">
                    <div>
                        <div style="font-size:18px; font-weight:600;">
                            Detail Transaksi
                        </div>
                        <div style="font-size:13px; color:gray;">
                            Informasi lengkap peminjaman
                        </div>
                    </div>

                    <button wire:click="$set('showModal', false)" style="
                                                    font-size:18px;
                                                    background:none;
                                                    border:none;
                                                    cursor:pointer;
                                                ">
                        ✖
                    </button>
                </div>

                {{-- INFO TABLE --}}
                <table style="
                                                width:100%;
                                                font-size:14px;
                                                border-collapse:collapse;
                                                margin-bottom:20px;
                                            ">
                    <tbody>

                        <tr>
                            <td style="width:180px; color:gray; padding:6px 0;">Kode</td>
                            <td style="width:10px;">:</td>
                            <td style="font-weight:500;">
                                {{ $selected->kode_peminjaman }}
                            </td>
                        </tr>

                        <tr>
                            <td style="color:gray; padding:6px 0;">Nama</td>
                            <td>:</td>
                            <td>{{ $selected->anggota->user->name }}</td>
                        </tr>

                        <tr>
                            <td style="color:gray; padding:6px 0;">Status</td>
                            <td>:</td>
                            <td>
                                <span style="
                                                                padding:4px 10px;
                                                                border-radius:999px;
                                                                font-size:12px;
                                                                background: {{ $selected->status == 'dikembalikan' ? '#dcfce7' : '#fef3c7' }};
                                                                color: {{ $selected->status == 'dikembalikan' ? '#16a34a' : '#d97706' }};
                                                            ">
                                    {{ $selected->status }}
                                </span>
                            </td>
                        </tr>

                        <tr>
                            <td style="color:gray; padding:6px 0;">Tanggal Pinjam</td>
                            <td>:</td>
                            <td>
                                {{ \Carbon\Carbon::parse($selected->tanggal_pinjam)->format('d M Y') }}
                            </td>
                        </tr>

                        <tr>
                            <td style="color:gray; padding:6px 0;">Tanggal Kembali</td>
                            <td>:</td>
                            <td>
                                {{ optional($selected->pengembalian)->tanggal_kembali
            ? \Carbon\Carbon::parse($selected->pengembalian->tanggal_kembali)->format('d M Y')
            : '-' }}
                            </td>
                        </tr>

                        <tr>
                            <td style="color:gray; padding:6px 0;">Denda</td>
                            <td>:</td>
                            <td>
                                Rp {{ number_format(optional($selected->pengembalian)->denda ?? 0, 0, ',', '.') }}
                            </td>
                        </tr>

                        <tr>
                            <td style="color:gray; padding:6px 0;">Keterangan</td>
                            <td>:</td>
                            <td>
                                {{ optional($selected->pengembalian)->keterangan ?: '-' }}
                            </td>
                        </tr>

                    </tbody>
                </table>

                {{-- DIVIDER --}}
                <div style="
                                                height:1px;
                                                background:#eee;
                                                margin:15px 0 20px 0;
                                            "></div>

                {{-- LIST BUKU --}}
                <div>
                    <div style="font-weight:600; margin-bottom:10px;">
                        Daftar Buku
                    </div>

                    <div style="display:flex; flex-direction:column; gap:12px;">

                        @foreach($selected->details as $detail)
                            <div style="
                                                                                    display:flex;
                                                                                    align-items:center;
                                                                                    gap:12px;
                                                                                    padding:10px;
                                                                                    border:1px solid #eee;
                                                                                    border-radius:10px;
                                                                                ">

                                {{-- COVER --}}
                                <img src="{{ asset('storage/' . $detail->buku->cover) }}" style="
                                                                                        width:55px;
                                                                                        height:75px;
                                                                                        object-fit:cover;
                                                                                        border-radius:6px;
                                                                                        border:1px solid #ddd;
                                                                                    ">

                                {{-- INFO --}}
                                <div style="flex:1;">
                                    <div style="font-weight:600;">
                                        {{ $detail->buku->judul }}
                                    </div>

                                    <div style="font-size:13px; color:gray;">
                                        Qty: {{ $detail->qty }}
                                    </div>
                                </div>

                            </div>
                        @endforeach

                    </div>
                </div>

                {{-- FOOTER --}}
                <div style="margin-top:25px; text-align:right;">
                    <x-filament::button color="gray" wire:click="$set('showModal', false)">
                        Tutup
                    </x-filament::button>
                </div>

            </div>

        </div>
    @endif
</x-filament-panels::page>