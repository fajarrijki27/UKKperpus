<?php

namespace App\Mail;

use Illuminate\Mail\Mailable;

class StrukPeminjamanMail extends Mailable
{
    public $peminjaman;
    public $pdf;

    public function __construct($peminjaman, $pdf)
    {
        $this->peminjaman = $peminjaman;
        $this->pdf = $pdf;
    }

    public function build()
    {
        return $this->subject('Struk Peminjaman Buku')
            ->view('emails.struk')
            ->attachData(
                $this->pdf->output(),
                'struk-peminjaman.pdf',
                [
                    'mime' => 'application/pdf',
                ]
            );
    }
}