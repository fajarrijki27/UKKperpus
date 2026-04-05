<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use Illuminate\Support\Facades\Gate;
use Filament\Forms;
use Livewire\WithPagination;
use App\Models\Peminjaman;

class Laporan extends Page
{
    use WithPagination;

    protected static ?string $navigationGroup = 'Laporan';
    protected static ?string $navigationIcon = 'heroicon-o-document-text';
    protected static string $view = 'filament.pages.laporan';

    public ?string $tanggal_awal = null;
    public ?string $tanggal_akhir = null;

    public bool $showResult = false;

    protected $queryString = ['page'];

    public static function canAccess(): bool
    {
        return Gate::allows('page_Laporan');
    }

    protected function getFormSchema(): array
    {
        return [
            Forms\Components\Section::make('Filter Laporan Peminjaman')
                ->schema([
                    Forms\Components\DatePicker::make('tanggal_awal')
                        ->label('Tanggal Awal')
                        ->required(),

                    Forms\Components\DatePicker::make('tanggal_akhir')
                        ->label('Tanggal Akhir')
                        ->required(),
                ])
                ->columns(2),
        ];
    }

    public function loadLaporan()
    {
        $this->validate([
            'tanggal_awal' => 'required|date',
            'tanggal_akhir' => 'required|date|after_or_equal:tanggal_awal',
        ]);

        $this->resetPage();
        $this->showResult = true;
    }

    /**
     * 🔥 INI YANG DIPAKAI DI BLADE ($this->data)
     */
    public function getDataProperty()
    {
        if (!$this->showResult) {
            return collect();
        }

        return Peminjaman::with([
            'anggota.user',
            'details',
            'pengembalian'
        ])
            ->whereBetween('tanggal_pinjam', [
                $this->tanggal_awal,
                $this->tanggal_akhir
            ])
            ->where('status', 'dikembalikan')
            ->latest()
            ->paginate(10);
    }

    public function printLaporan()
    {
        $this->dispatch(
            'openPrint',
            url: route('print.laporan.peminjaman', [
                'awal' => $this->tanggal_awal,
                'akhir' => $this->tanggal_akhir,
            ])
        );
    }
}