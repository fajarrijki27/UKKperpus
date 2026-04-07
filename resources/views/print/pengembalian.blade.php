<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <title>Struk Pengembalian</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f3f4f6;
            padding: 20px;
        }

        .container {
            max-width: 720px;
            margin: auto;
            background: #ffffff;
            padding: 28px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.06);
        }

        .buku-item {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 10px;
            border: 1px solid #eee;
            border-radius: 10px;
        }

        .header {
            margin-bottom: 20px;
        }

        .header h2 {
            margin: 0;
        }

        .sub {
            font-size: 13px;
            color: gray;
        }

        .info {
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .info table {
            width: 100%;
            font-size: 14px;
        }

        .info td {
            padding: 6px 0;
        }

        table.data {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        table.data th {
            background: #f9fafb;
            padding: 10px;
            text-align: left;
            font-size: 14px;
        }

        table.data td {
            padding: 10px;
            border-bottom: 1px solid #eee;
            font-size: 14px;
        }

        .total {
            margin-top: 20px;
            text-align: right;
            font-size: 15px;
            font-weight: bold;
        }

        .btn {
            margin-top: 25px;
        }

        .btn button {
            padding: 10px 16px;
            border: none;
            background: #16a34a;
            color: white;
            border-radius: 6px;
            cursor: pointer;
        }

        /* PRINT MODE */
        @media print {
            body {
                background: white;
                padding: 0;
            }

            .container {
                box-shadow: none;
                border-radius: 0;
                padding: 0;
            }

            .btn {
                display: none;
            }
        }
    </style>
</head>

<body>

    <div class="container">

        <div class="header" style="display:flex; align-items:center; gap:15px;">

            <!-- LOGO -->
            <img src="{{ asset('storage/logo/logo.png') }}" alt="Logo" style="
        width:60px;
        height:60px;
        object-fit:contain;
    ">

            <!-- TEXT -->
            <div>
                <h2 style="margin:0;">Struk Pengembalian</h2>
                <div class="sub">Bukti pengembalian buku perpustakaan</div>
                <div class="sub">Di Perpustakaan SMKS Igasar</div>
            </div>

        </div>

        <hr style="margin-top:15px;">

        {{-- INFO --}}
        <div class="info">

            @php
                $jatuhTempo = \Carbon\Carbon::parse($pengembalian->peminjaman->tanggal_jatuh_tempo);
                $tanggalKembali = \Carbon\Carbon::parse($pengembalian->tanggal_kembali);

                $telatHari = $jatuhTempo->diffInDays($tanggalKembali, false);
            @endphp

            <table>
                <tr>
                    <td width="180">Kode</td>
                    <td>: {{ $pengembalian->peminjaman->kode_peminjaman }}</td>
                </tr>
                <tr>
                    <td>Nama</td>
                    <td>: {{ $pengembalian->peminjaman->anggota->user->name }}</td>
                </tr>
                <tr>
                    <td>Tanggal Pinjam</td>
                    <td>: {{ \Carbon\Carbon::parse($pengembalian->peminjaman->tanggal_pinjam)->format('d M Y') }}</td>
                </tr>
                <tr>
                    <td>Tanggal Jatuh Tempo</td>
                    <td>: {{ \Carbon\Carbon::parse($pengembalian->peminjaman->tanggal_jatuh_tempo)->format('d M Y') }}
                    </td>
                </tr>
                <tr>
                    <td>Tanggal Kembali</td>
                    <td>
                        : {{ \Carbon\Carbon::parse($pengembalian->tanggal_kembali)->format('d M Y') }}

                        @if($telatHari > 0)
                            <div style="color:#dc2626; font-size:13px; margin-top:4px;">
                                Terlambat {{ $telatHari }} hari
                            </div>
                        @else
                            <div style="color:#16a34a; font-size:13px; margin-top:4px;">
                                Tepat waktu
                            </div>
                        @endif
                    </td>
                </tr>
            </table>
        </div>

        <div style="margin-top:25px;">
            <div style="font-weight:600; margin-bottom:10px;">
                Daftar Buku
            </div>

            <div style="display:flex; flex-direction:column; gap:12px;">

                @foreach($pengembalian->peminjaman->details as $detail)

                    <div class="buku-item">

                        <img src="{{ asset('storage/' . $detail->buku->cover) }}" style="
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

        {{-- DENDA --}}
        <div class="total">
            Denda:
            <span>
                Rp {{ number_format($pengembalian->denda, 0, ',', '.') }}
            </span>
        </div>

        {{-- BUTTON PRINT ONLY --}}
        <div class="btn btn-print">
            <button onclick="window.print()">Print</button>
        </div>

    </div>

</body>

</html>