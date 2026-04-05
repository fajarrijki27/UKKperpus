<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Peminjaman extends Model
{
    use HasFactory;
    protected $table = 'peminjamans';
    protected $fillable = [
        'anggota_id',
        'kode_peminjaman',
        'tanggal_pinjam',
        'tanggal_jatuh_tempo',
        'status'
    ];

    public function anggota()
    {
        return $this->belongsTo(Anggota::class);
    }

    public function pengembalian()
    {
        return $this->hasOne(Pengembalian::class);
    }
    
    public function details()
    {
        return $this->hasMany(DetailPeminjaman::class);
    }
}
