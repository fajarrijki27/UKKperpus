<!DOCTYPE html>
<html>

<head>
    <style>
        body {
            font-family: DejaVu Sans, sans-serif;
            margin: 0;
        }

        /* KOP */
        .kop {
            position: fixed;
            top: -80px;
            left: 0;
            right: 0;
        }

        .kop img {
            width: 100%;
        }

        .line {
            border-bottom: 2px solid black;
            margin-bottom: 10px;
        }

        /* CONTENT */
        .content {
            margin-top: 20px;
        }

        .judul {
            text-align: center;
        }

        .periode {
            text-align: center;
            margin-bottom: 15px;
            font-size: 12px;
        }

        /* TABLE */
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 12px;
        }

        th,
        td {
            border: 1px solid black;
            padding: 5px;
        }

        th {
            background: #eee;
        }

        /* FOOTER */
        .footer {
            position: fixed;
            bottom: -10px;
            right: 10px;
            font-size: 10px;
        }

        .pagenum:before {
            content: counter(page);
        }

        /* TTD */
        .ttd {
            margin-top: 40px;
            width: 100%;
        }

        .ttd-kanan {
            float: right;
            text-align: center;
        }

        /* PAGE */
        @page {
            margin: 100px 25px;
        }
    </style>
</head>

<body>

    {{-- KOP --}}
    <div class="kop">
        <img src="{{ public_path('storage/kop/kopSurat-igz.png') }}">
    </div>

    {{-- FOOTER --}}
    <div class="footer">
        Halaman <span class="pagenum"></span>
    </div>

    {{-- LOGIC PAGINATION --}}
    @php
        $chunks = $data->chunk(20); // jumlah data per halaman (bisa disesuaikan)
        $no = 1;
    @endphp

    @foreach($chunks as $chunk)

        <div class="content">

            {{-- GARIS --}}
            <div class="line"></div>

            {{-- JUDUL --}}
            <div class="judul">
                <h3>LAPORAN PEMINJAMAN BUKU</h3>
            </div>

            {{-- PERIODE --}}
            <div class="periode">
                Periode:
                {{ \Carbon\Carbon::parse($awal)->format('d M Y') }}
                -
                {{ \Carbon\Carbon::parse($akhir)->format('d M Y') }}
            </div>

            {{-- TABLE --}}
            <table>
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Kode</th>
                        <th>Nama</th>
                        <th>Total Buku</th>
                        <th>Denda</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($chunk as $p)
                        <tr>
                            <td>{{ $no++ }}</td>
                            <td>{{ $p->kode_peminjaman }}</td>
                            <td>{{ $p->anggota->user->name }}</td>
                            <td>{{ $p->details->sum('qty') }}</td>
                            <td>Rp {{ number_format(optional($p->pengembalian)->denda ?? 0, 0, ',', '.') }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>

            {{-- TTD HANYA DI HALAMAN TERAKHIR --}}
            @if($loop->last)
                <div class="ttd">
                    <div style="text-align:right;">
                        Dicetak pada:
                        {{ \Carbon\Carbon::now()->translatedFormat('d F Y') }}
                    </div>

                    <div class="ttd-kanan">
                        <p>Mengetahui,</p>
                        <br><br><br>
                        <p><b>Kepala Perpustakaan</b></p>
                    </div>
                </div>
            @endif

        </div>

        {{-- PAGE BREAK --}}
        @if(!$loop->last)
            <div style="page-break-after: always;"></div>
        @endif

    @endforeach

</body>

</html>