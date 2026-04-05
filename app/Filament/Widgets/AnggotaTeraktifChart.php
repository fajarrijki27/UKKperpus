<?php

namespace App\Filament\Widgets;

use Filament\Widgets\ChartWidget;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;


class AnggotaTeraktifChart extends ChartWidget
{
    protected static ?string $heading = 'Top Anggota Paling Banyak Membaca';
    protected int | string | array $columnSpan = 'full';
    protected function getData(): array
    {
        $data = DB::table('peminjamans')
            ->join('detail_peminjamans', 'peminjamans.id', '=', 'detail_peminjamans.peminjaman_id')
            ->join('anggotas', 'peminjamans.anggota_id', '=', 'anggotas.id')
            ->select(
                'anggotas.nis',
                'users.name',
                DB::raw('SUM(detail_peminjamans.qty) as total_buku')
            )
            ->join('users', 'anggotas.user_id', '=', 'users.id')
            ->groupBy('anggotas.id', 'anggotas.nis')
            ->orderByDesc('total_buku')
            ->limit(10)
            ->get();

        return [
            'datasets' => [
                [
                    'label' => 'Jumlah Buku',
                    'data' => $data->pluck('total_buku'),
                    'backgroundColor' => '#3b82f6',
                ],
            ],
            'labels' => $data->pluck('name'),
        ];
    }

    protected function getType(): string
    {
        return 'bar'; // 🔥 ini diagram batang
    }
}
