<h2>Struk Pengembalian Buku</h2>

<p>Kode: {{ $pengembalian->peminjaman->kode_peminjaman }}</p>
<p>Tanggal Kembali: {{ $pengembalian->tanggal_kembali }}</p>
<p>Denda: Rp {{ number_format($pengembalian->denda, 0, ',', '.') }}</p>

<h4>Daftar Buku:</h4>
<ul>
    @foreach($pengembalian->peminjaman->details as $detail)
        <li>{{ $detail->buku->judul }} ({{ $detail->qty }})</li>
    @endforeach
</ul>