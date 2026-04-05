<?php

namespace App\Filament\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Card;
use App\Models\Buku;
use App\Models\Anggota;
use App\Models\Peminjaman;

class StatsOverview extends BaseWidget
{
    public static function canView(): bool
    {
       return auth()->user()?->hasAnyRole(['Petugas', 'SuperAdmin']);
    }
    protected function getCards(): array
    {
        return [
            Card::make('Total Buku', Buku::count()),
            Card::make('Total Anggota', Anggota::count()),
            Card::make(
                'Buku Dipinjam',
                Peminjaman::where('status', 'dipinjam')->count()
            ),
            Card::make(
                'Sudah Dikembalikan',
                Peminjaman::where('status', 'dikembalikan')->count()
            ),
        ];
    }
}
