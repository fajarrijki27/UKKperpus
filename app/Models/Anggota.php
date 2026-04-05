<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Anggota extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'nis',
        'kelas',
        'jenis_kelamin',
        'tanggal_lahir',
        'no_hp',
        'alamat'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
    
    public function peminjaman()
    {
        return $this->hasMany(Peminjaman::class);
    }
}