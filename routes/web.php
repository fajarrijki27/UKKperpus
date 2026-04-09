<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PengembalianPrintController;
use App\Http\Controllers\PeminjamanController;
use Barryvdh\DomPDF\Facade\Pdf;

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

    $awal = request('awal');
    $akhir = request('akhir');

    $data = \App\Models\Peminjaman::with(['anggota.user', 'details', 'pengembalian'])
        ->whereBetween('tanggal_pinjam', [$awal, $akhir])
        ->where('status', 'dikembalikan')
        ->get();

    $pdf = Pdf::loadView('print.laporan', compact('data', 'awal', 'akhir'))
        ->setPaper('A4', 'portrait');

    return $pdf->stream('laporan-peminjaman.pdf');
})->name('print.laporan.peminjaman');

Route::post('/peminjaman/{id}/kirim-email', [PeminjamanController::class, 'kirimEmail'])
    ->name('peminjaman.kirimEmail');