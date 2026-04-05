<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Invoice Peminjaman</title>

    <style>
        body {
            font-family: DejaVu Sans, sans-serif;
            font-size: 12px;
            color: #111;
        }

        .container {
            padding: 20px;
        }

        .header {
            margin-bottom: 20px;
        }

        .title {
            font-size: 18px;
            font-weight: bold;
        }

        .subtitle {
            font-size: 12px;
            color: gray;
        }

        .info-table {
            width: 100%;
            margin-top: 10px;
        }

        .info-table td {
            padding: 4px 0;
        }

        .label {
            width: 140px;
            color: gray;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .table th {
            background: #f3f4f6;
            padding: 8px;
            text-align: left;
            font-size: 12px;
        }

        .table td {
            padding: 8px;
            border-bottom: 1px solid #eee;
        }

        .text-right {
            text-align: right;
        }

        .total-box {
            margin-top: 20px;
            width: 100%;
        }

        .total-box td {
            padding: 6px;
        }

        .total {
            font-weight: bold;
            font-size: 14px;
        }

        .footer {
            margin-top: 30px;
            font-size: 11px;
            color: gray;
        }
    </style>

</head>
<body>

<div class="container">

    {{-- HEADER --}}
    <div class="header">
        <div class="title">INVOICE PEMINJAMAN</div>
        <div class="subtitle">Perpustakaan Sekolah</div>
    </div>

    {{-- INFO --}}
    <table class="info-table">
        <tr>
            <td class="label">Kode</td>
            <td>: {{ $peminjaman->kode_peminjaman }}</td>
        </tr>

        <tr>
            <td class="label">Nama</td>
            <td>: {{ $peminjaman->anggota->user->name ?? '-' }}</td>
        </tr>

        <tr>
            <td class="label">Tanggal Pinjam</td>
            <td>: {{ \Carbon\Carbon::parse($peminjaman->tanggal_pinjam)->format('d M Y') }}</td>
        </tr>

        <tr>
            <td class="label">Jatuh Tempo</td>
            <td>: {{ \Carbon\Carbon::parse($peminjaman->tanggal_jatuh_tempo)->format('d M Y') }}</td>
        </tr>
    </table>

    {{-- TABLE BUKU --}}
    <table class="table">
        <thead>
            <tr>
                <th style="width:40px;">No</th>
                <th>Judul Buku</th>
                <th style="width:80px;" class="text-right">Qty</th>
            </tr>
        </thead>

        <tbody>
            @foreach($peminjaman->details as $index => $detail)
                <tr>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $detail->buku->judul }}</td>
                    <td class="text-right">{{ $detail->qty }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    {{-- TOTAL --}}
    <table class="total-box">
        <tr>
            <td class="text-right total">
                Total Buku: {{ $peminjaman->details->sum('qty') }}
            </td>
        </tr>
    </table>

    {{-- FOOTER --}}
    <div class="footer">
        * Harap mengembalikan buku sebelum tanggal jatuh tempo. <br>
        * Denda akan dikenakan jika terlambat. <br>
        * Harap simpan Struk Transaksi
    </div>

</div>

</body>
</html>