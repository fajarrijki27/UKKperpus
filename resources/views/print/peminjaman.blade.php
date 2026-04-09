<!DOCTYPE html>
<html>

<head>
    <title>Struk Peminjaman</title>

    <style>
        body {
            font-family: sans-serif;
            background: #f3f4f6;
            padding: 20px;
        }

        .card {
            max-width: 700px;
            margin: auto;
            background: white;
            padding: 24px;
            border-radius: 14px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.08);
        }

        .title {
            font-size: 20px;
            font-weight: 600;
        }

        .subtitle {
            font-size: 13px;
            color: gray;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
        }

        td {
            padding: 8px 0;
        }

        .label {
            color: gray;
            width: 160px;
        }

        .badge {
            padding: 4px 10px;
            border-radius: 999px;
            font-size: 12px;
            background: #fef3c7;
            color: #d97706;
        }

        .buku-item {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 10px;
            border: 1px solid #eee;
            border-radius: 10px;
        }

        .btn {
            padding: 10px 16px;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            font-weight: 500;
        }

        .btn-print {
            background: #16a34a;
            color: white;
        }

        .btn-download {
            background: #2563eb;
            color: white;
        }

        /* 🔥 HILANGKAN SAAT PRINT */
        @media print {
            body {
                background: white;
                padding: 0;
            }

            .card {
                box-shadow: none;
                border-radius: 0;
                padding: 0;
            }

            .no-print {
                display: none !important;
            }
        }
    </style>

</head>

<body>
    @if(session('success'))
        <div id="notif" style="
            background:#dcfce7;
            color:#166534;
            padding:12px;
            border-radius:8px;
            margin-bottom:15px;
        ">
            {{ session('success') }}
        </div>

        <script>
            setTimeout(() => {
                document.getElementById('notif').style.display = 'none';
            }, 2000);
        </script>
    @endif

    <div class="card">

        {{-- HEADER --}}
        <div style="margin-bottom:20px; display:flex; align-items:center; gap:15px;">

            <!-- LOGO -->
            <img src="{{ asset('storage/logo/logo.png') }}" alt="Logo" style="
        width:60px;
        height:60px;
        object-fit:contain;
    ">

            <!-- TEXT -->
            <div>
                <div class="title">Struk Peminjaman</div>
                <div class="subtitle">Bukti transaksi peminjaman buku</div>
                <div class="subtitle">Di Perpustakaan SMKS Igasar</div>
            </div>

        </div>

        <hr style="margin-top:15px;">

        {{-- INFO --}}
        <table>
            <tr>
                <td class="label">Kode</td>
                <td><b>{{ $peminjaman->kode_peminjaman }}</b></td>
            </tr>

            <tr>
                <td class="label">Nama</td>
                <td>{{ $peminjaman->anggota->user->name ?? '-' }}</td>
            </tr>

            <tr>
                <td class="label">Tanggal Pinjam</td>
                <td>{{ \Carbon\Carbon::parse($peminjaman->tanggal_pinjam)->format('d M Y') }}</td>
            </tr>

            <tr>
                <td class="label">Jatuh Tempo</td>
                <td>{{ \Carbon\Carbon::parse($peminjaman->tanggal_jatuh_tempo)->format('d M Y') }}</td>
            </tr>
        </table>

        {{-- LIST BUKU --}}
        <div style="margin-top:25px;">
            <div style="font-weight:600; margin-bottom:10px;">
                Daftar Buku
            </div>

            <div style="display:flex; flex-direction:column; gap:12px;">

                @foreach($peminjaman->details as $detail)

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

        {{-- FOOTER --}}
        <div style="margin-top:25px; font-size:13px; color:gray;">
            * Harap mengembalikan buku sebelum tanggal jatuh tempo. <br>
            * Denda akan dikenakan jika terlambat. <br>
            * Harap simpan Struk Transaksi
        </div>

        {{-- BUTTON --}}
        <div class="no-print" style="margin-top:25px; display:flex; gap:10px;">

            <button onclick="window.print()" class="btn btn-print">
                Print
            </button>

            <a href="{{ route('peminjaman.download', $peminjaman->id) }}">
                <button class="btn btn-download">
                    Download PDF
                </button>
            </a>

            <form action="{{ route('peminjaman.kirimEmail', $peminjaman->id) }}" method="POST">
                @csrf
                <button type="submit" class="btn" style="background:#9333ea; color:white;">
                    Kirim Email
                </button>
            </form>
        </div>

    </div>

</body>

</html>