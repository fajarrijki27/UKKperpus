<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PengembalianPrintController;
use App\Http\Controllers\PeminjamanController;

Route::get('/', function () {
    return redirect('/admin/login');
});

Route::get('/pengembalian/struk/{id}', [PengembalianPrintController::class, 'struk'])
    ->name('pengembalian.struk');

Route::get('/peminjaman/struk/{id}', [PeminjamanController::class, 'struk'])
    ->name('peminjaman.struk');

Route::get('/peminjaman/download/{id}', [PeminjamanController::class, 'download'])
    ->name('peminjaman.download');

Route::get('/print/laporan-peminjaman', function () {

    $data = \App\Models\Peminjaman::with(['anggota.user', 'details', 'pengembalian'])
        ->whereBetween('tanggal_pinjam', [request('awal'), request('akhir')])
        ->where('status', 'dikembalikan')
        ->get();

    return view('print.laporan', compact('data'));

})->name('print.laporan.peminjaman');