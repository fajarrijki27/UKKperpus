<h2>Struk Peminjaman</h2>

<p>Kode: {{ $peminjaman->kode_peminjaman }}</p>
<p>Nama: {{ $peminjaman->anggota->user->name }}</p>

<p>Tanggal Pinjam:
    {{ \Carbon\Carbon::parse($peminjaman->tanggal_pinjam)->format('d M Y') }}
</p>

<p>Jatuh Tempo:
    {{ \Carbon\Carbon::parse($peminjaman->tanggal_jatuh_tempo)->format('d M Y') }}
</p>

<hr>

<h4>Daftar Buku:</h4>

<ul>
    @foreach($peminjaman->details as $detail)
        <li>
            {{ $detail->buku->judul }} (Qty: {{ $detail->qty }})
        </li>
    @endforeach
</ul>