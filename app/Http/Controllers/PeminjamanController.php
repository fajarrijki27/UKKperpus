<?php

namespace App\Http\Controllers;

use App\Models\Peminjaman;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Mail;
use App\Mail\StrukPeminjamanMail;

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

    public function kirimEmail($id)
    {
        $peminjaman = Peminjaman::with('anggota.user', 'details.buku')->findOrFail($id);

        // 🔥 Generate PDF dari view yang sama
        $pdf = Pdf::loadView('print.peminjaman-pdf', compact('peminjaman'));

        $emailTujuan = $peminjaman->anggota->user->email;

        Mail::to($emailTujuan)->send(
            new StrukPeminjamanMail($peminjaman, $pdf)
        );

        return back()->with('success', 'Struk + PDF berhasil dikirim ke email!');
    }
}