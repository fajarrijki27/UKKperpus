<!DOCTYPE html>
<html>

<head>
    <title>Laporan Peminjaman</title>
    <style>
        body {
            font-family: Arial;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th,
        td {
            border: 1px solid #ddd;
            padding: 8px;
        }
    </style>
</head>

<body onload="window.print()">

    <h2 style="text-align:center;">Laporan Peminjaman Buku</h2>

    <table>
        <thead>
            <tr>
                <th>Kode</th>
                <th>Nama</th>
                <th>Total Buku</th>
                <th>Denda</th>
            </tr>
        </thead>
        <tbody>
            @foreach($data as $p)
                <tr>
                    <td>{{ $p->kode_peminjaman }}</td>
                    <td>{{ $p->anggota->user->name }}</td>
                    <td>{{ $p->details->sum('qty') }}</td>
                    <td>Rp {{ number_format(optional($p->pengembalian)->denda ?? 0, 0, ',', '.') }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

</body>

</html>