<x-filament-panels::page>

    {{-- INPUT --}}
    <div style="margin-bottom:20px;">
        <input type="text" wire:model.live="kode" placeholder="Masukkan kode peminjaman (contoh: IGZ-XXXX)" style="
                padding:12px 14px;
                border:1px solid #e5e7eb;
                border-radius:10px;
                background:white;
                width:100%;
                max-width:420px;
                outline:none;
            ">
    </div>

    {{-- HASIL --}}
    @if($peminjaman)

        @php
            $jatuhTempo = \Carbon\Carbon::parse($peminjaman->tanggal_jatuh_tempo);
            $sekarang = now();

            $telatJam = $jatuhTempo->diffInHours($sekarang, false);
            $telatHari = $telatJam > 0 ? max(1, floor($telatJam / 24)) : 0;
        @endphp

        <div style="
                                                                            background:white; 
                                                                            padding:24px; 
                                                                            border-radius:14px; 
                                                                            box-shadow:0 6px 18px rgba(0,0,0,0.06);
                                                                        ">

            {{-- HEADER --}}
            <div style="margin-bottom:20px;">
                <div style="font-size:18px; font-weight:600;">
                    Detail Peminjaman
                </div>
                <div style="font-size:13px; color:gray;">
                    Informasi transaksi peminjaman buku
                </div>
            </div>

            {{-- INFO --}}
            <table style="width:100%; border-collapse:collapse; font-size:14px;">
                <tbody>

                    <tr style="border-bottom:1px solid #f1f1f1;">
                        <td style="padding:8px 0; color:gray;">Kode</td>
                        <td style="padding:8px 0; font-weight:500;">
                            {{ $peminjaman->kode_peminjaman }}
                        </td>
                    </tr>

                    <tr style="border-bottom:1px solid #f1f1f1;">
                        <td style="padding:8px 0; color:gray;">Status</td>
                        <td style="padding:8px 0;">
                            <span style="
                                                                                                padding:4px 10px;
                                                                                                border-radius:999px;
                                                                                                font-size:12px;
                                                                                                background: {{ $peminjaman->status == 'dikembalikan' ? '#dcfce7' : '#fef3c7' }};
                                                                                                color: {{ $peminjaman->status == 'dikembalikan' ? '#16a34a' : '#d97706' }};
                                                                                            ">
                                {{ $peminjaman->status }}
                            </span>
                        </td>
                    </tr>

                    <tr style="border-bottom:1px solid #f1f1f1;">
                        <td style="padding:8px 0; color:gray;">Tanggal Pinjam</td>
                        <td style="padding:8px 0;">
                            {{ \Carbon\Carbon::parse($peminjaman->tanggal_pinjam)->format('d M Y') }}
                        </td>
                    </tr>

                    <tr>
                        <td style="padding:8px 0; color:gray;">Jatuh Tempo</td>
                        <td style="padding:8px 0;">
                            {{ \Carbon\Carbon::parse($peminjaman->tanggal_jatuh_tempo)->format('d M Y') }}

                            @if($telatHari > 0)
                                <div style="color:#dc2626; font-size:13px; margin-top:4px;">
                                    Terlambat {{ $telatHari }} hari
                                </div>
                            @endif
                        </td>
                    </tr>

                </tbody>
            </table>

            {{-- LIST BUKU --}}
            <div style="margin-top:25px;">
                <div style="font-weight:600; margin-bottom:10px;">
                    Daftar Buku
                </div>

                <div style="display:flex; flex-direction:column; gap:12px;">

                    @foreach($peminjaman->details as $detail)

                        <div
                            style="
                                                                                                                                                            display:flex;
                                                                                                                                                            align-items:center;
                                                                                                                                                            gap:12px;
                                                                                                                                                            padding:10px;
                                                                                                                                                            border:1px solid #f1f1f1;
                                                                                                                                                            border-radius:10px;
                                                                                                                                                        ">

                            <img src="{{ asset('storage/' . $detail->buku->cover) }}"
                                style="
                                                                                                                                                                width:55px;
                                                                                                                                                                height:75px;
                                                                                                                                                                object-fit:cover;
                                                                                                                                                                border-radius:6px;
                                                                                                                                                                border:1px solid #ddd;
                                                                                                                                                            ">

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

            @if($peminjaman->status == 'diproses')
                {{-- MODE KONFIRMASI --}}
                <div style="margin-top:20px;">
                    <x-filament::button wire:click="konfirmasiPeminjaman({{ $peminjaman->id }})" wire:loading.attr="disabled"
                        color="primary">

                        <span wire:loading.remove>Konfirmasi Peminjaman</span>
                        <span wire:loading>Memproses...</span>

                    </x-filament::button>
                </div>
            @else
                @if($telatHari > 0)
                    <div style="margin-top:20px; max-width:400px;">

                        {{-- NOMINAL PER HARI --}}
                        <label style="font-size:14px; color:gray;">Denda / Hari</label>
                        <input type="number" wire:model.live="dendaPerHari" min="0" style="
                                            width:100%;
                                            padding:10px;
                                            border:1px solid #ddd;
                                            border-radius:8px;
                                            margin-top:5px;
                                        ">

                        {{-- HARI TELAT --}}
                        <label style="font-size:14px; color:gray; margin-top:10px; display:block;">
                            Hari Telat
                        </label>
                        <input type="number" value="{{ $telatHari }}" disabled style="
                                            width:100%;
                                            padding:10px;
                                            border:1px solid #eee;
                                            border-radius:8px;
                                            background:#f9fafb;
                                        ">

                        {{-- TOTAL --}}
                        <label style="font-size:14px; color:gray; margin-top:10px; display:block;">
                            Total Denda
                        </label>
                        <input type="number" value="{{ $totalDenda }}" disabled style="
                                            width:100%;
                                            padding:10px;
                                            border:1px solid #eee;
                                            border-radius:8px;
                                            background:#f9fafb;
                                            font-weight:600;
                                        ">

                        {{-- BUTTON --}}
                        <div style="margin-top:10px;">
                            <x-filament::button wire:click="gunakanDenda" color="warning">
                                Masukkan Denda
                            </x-filament::button>
                        </div>

                    </div>

                    {{-- DENDA --}}
                    <div style="margin-top:20px;">
                        <label style="font-size:14px; color:gray; display:block; margin-bottom:6px;">
                            Denda
                        </label>

                        <input type="number" wire:model="denda" placeholder="Masukkan denda (opsional)" style="
                                                                                    margin-top:5px;
                                                                                    padding:10px;
                                                                                    border:1px solid #ddd;
                                                                                    border-radius:8px;
                                                                                    background:white;
                                                                                    width:100%;
                                                                                    max-width:400px;
                                                                                    font-weight:600;
                                                                                ">
                    </div>
                @endif

                <div style="margin-top:20px; max-width:400px;">
                    <label style="font-size:14px; color:gray; display:block; margin-bottom:6px;">
                        Keterangan
                    </label>

                    <textarea wire:model="keterangan" rows="1"
                        oninput="this.style.height='auto'; this.style.height=this.scrollHeight+'px'"
                        placeholder="Contoh: Buku rusak, telat, dll (opsional)" style="
                                                        width:100%;
                                                        padding:10px;
                                                        border:1px solid #ddd;
                                                        border-radius:8px;
                                                        resize:none;
                                                        overflow:hidden;
                                                        line-height:1.5;
                                                    "></textarea>

                    <div style="font-size:12px; color:gray; margin-top:5px;">
                        Boleh dikosongkan jika tidak ada keterangan
                    </div>
                </div>

                <div style="margin-top:25px; display:flex; gap:10px; flex-wrap:wrap;">

                    <x-filament::button color="success" wire:click="kembalikan" :disabled="$peminjaman->status == 'dikembalikan'">

                        Kembalikan Buku
                    </x-filament::button>

                    @if($pengembalianId)
                        <a href="{{ route('pengembalian.struk', $pengembalianId) }}" target="_blank">
                            <x-filament::button color="gray">
                                Print Struk
                            </x-filament::button>
                        </a>
                        <x-filament::button color="info" wire:click="kirimEmail" wire:loading.attr="disabled">
                            <span wire:loading.remove>Kirim Email</span>
                            <span wire:loading>Mengirim...</span>
                        </x-filament::button>
                    @endif

                </div>
            @endif

        </div>

    @elseif($kode)

        <div style="
                                                                            background:white; 
                                                                            padding:20px; 
                                                                            border-radius:12px; 
                                                                            box-shadow:0 4px 10px rgba(0,0,0,0.05);
                                                                            color:#dc2626;
                                                                        ">
            Data tidak ditemukan
        </div>

    @endif

</x-filament-panels::page>