<?php

namespace App\Http\Controllers;

use App\Models\Pengembalian;

class PengembalianPrintController extends Controller
{
    public function struk($id)
    {
        $pengembalian = Pengembalian::with('peminjaman.details.buku', 'peminjaman.anggota.user')
            ->findOrFail($id);

        return view('print.pengembalian', compact('pengembalian'));
    }
}