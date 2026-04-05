<?php

namespace App\Http\Controllers;

use App\Models\Peminjaman;
use Barryvdh\DomPDF\Facade\Pdf;

class PeminjamanController extends Controller
{
    public function struk($id)
    {
        $peminjaman = Peminjaman::with('details.buku', 'anggota.user')
            ->findOrFail($id);

        return view('print.peminjaman', compact('peminjaman'));
    }

    public function download($id)
    {
        $peminjaman = Peminjaman::with('details.buku', 'anggota.user')
            ->findOrFail($id);

        $pdf = Pdf::loadView('print.peminjaman-pdf', compact('peminjaman'));

        return $pdf->download('struk-peminjaman.pdf');
    }
}