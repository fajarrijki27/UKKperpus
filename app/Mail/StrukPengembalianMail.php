<?php

namespace App\Mail;

use Illuminate\Mail\Mailable;
use Barryvdh\DomPDF\Facade\Pdf;

class StrukPengembalianMail extends Mailable
{
    public $pengembalian;

    public function __construct($pengembalian)
    {
        $this->pengembalian = $pengembalian;
    }

    public function build()
    {
        $pdf = Pdf::loadView('print.pengembalian-pdf', [
            'pengembalian' => $this->pengembalian
        ]);

        return $this->subject('Struk Pengembalian Buku')
            ->view('emails.struk_pengembalian')
            ->attachData(
                $pdf->output(),
                'struk-pengembalian.pdf',
                [
                    'mime' => 'application/pdf',
                ]
            );
    }
}
