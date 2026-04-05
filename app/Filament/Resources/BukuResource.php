<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BukuResource\Pages;
use App\Filament\Resources\BukuResource\RelationManagers;
use App\Models\Buku;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use App\Models\Kategori;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class BukuResource extends Resource
{
    protected static ?string $model = Buku::class;
    protected static ?string $navigationGroup = 'Menu';
    protected static ?string $navigationLabel = 'Buku';
    protected static ?string $modelLabel = 'Buku';
    protected static ?string $navigationIcon = 'heroicon-o-book-open';

    protected static function generateKodeBuku()
    {
        do {
            $kode = 'BK-' . strtoupper(Str::random(6));
        } while (Buku::where('kode_buku', $kode)->exists());

        return $kode;
    }
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('kategori_id')
                    ->label('Kategori Buku')
                    ->required()
                    ->options(Kategori::all()->pluck('nama_kategori', 'id'))
                    ->searchable(),

                TextInput::make('kode_buku')
                    ->label('Kode Buku')
                    ->disabled() // tidak bisa diedit
                    ->dehydrated() // tetap dikirim ke database
                    ->default(fn() => self::generateKodeBuku())
                    ->required(),

                TextInput::make('isbn')
                    ->label('ISBN Buku')
                    ->required(),

                TextInput::make('judul')
                    ->label('Judul Buku')
                    ->required(),

                TextInput::make('penulis')
                    ->required(),

                TextInput::make('penerbit')
                    ->required(),

                Select::make('tahun_terbit')
                    ->label('Tahun Terbit')
                    ->options(function () {
                        $tahunSekarang = now()->year;
                        $tahunAwal = 1980;

                        return collect(range($tahunSekarang, $tahunAwal))
                            ->mapWithKeys(fn($tahun) => [$tahun => $tahun]);
                    })
                    ->searchable()
                    ->required(),

                TextInput::make('rak')
                    ->label('Rak Buku')
                    ->prefix('Rak-')
                    ->required()
                    ->dehydrateStateUsing(function ($state) {
                        return 'Rak-' . ltrim($state, 'Rak-');
                    }),

                TextInput::make('stok')
                    ->required()
                    ->numeric()
                    ->columnSpan(2)
                    ->default(0),

                FileUpload::make('cover')
                    ->required()
                    ->image()
                    ->disk('public')
                    ->directory('covers')
                    ->columnSpan(2)
                    ->label('Cover Buku')
                    ->imageEditor(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('kategori.nama_kategori')
                    ->label('Kategori'),

                TextColumn::make('kode_buku'),

                TextColumn::make('isbn')
                    ->label('ISBN'),

                TextColumn::make('judul'),

                TextColumn::make('penulis'),

                TextColumn::make('tahun_terbit'),

                TextColumn::make('rak'),

                ImageColumn::make('cover')
                    ->disk('public'),

                TextColumn::make('stok')
                    ->numeric()
                    ->sortable(),
            ])
            ->filters([

                // 🔍 SEARCH GLOBAL
                Tables\Filters\Filter::make('search')
                    ->label('Cari Buku')
                    ->form([
                        TextInput::make('keyword')
                            ->placeholder('Judul / Penulis / ISBN / Kode Buku'),
                    ])
                    ->query(function (Builder $query, array $data) {
                        if (!$data['keyword'])
                            return;

                        $query->where(function ($q) use ($data) {
                            $q->where('judul', 'like', '%' . $data['keyword'] . '%')
                                ->orWhere('penulis', 'like', '%' . $data['keyword'] . '%')
                                ->orWhere('isbn', 'like', '%' . $data['keyword'] . '%')
                                ->orWhere('kode_buku', 'like', '%' . $data['keyword'] . '%');
                        });
                    }),

                // 📚 FILTER KATEGORI
                Tables\Filters\SelectFilter::make('kategori_id')
                    ->label('Kategori')
                    ->options(Kategori::pluck('nama_kategori', 'id'))
                    ->searchable(),

                // 🗄️ FILTER RAK
                Tables\Filters\Filter::make('rak')
                    ->label('Rak Buku')
                    ->form([
                        TextInput::make('rak')
                            ->placeholder('Contoh: Rak-A'),
                    ])
                    ->query(function (Builder $query, array $data) {
                        if (!$data['rak'])
                            return;

                        $query->where('rak', 'like', '%' . $data['rak'] . '%');
                    }),

            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\ViewAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListBukus::route('/'),
            'create' => Pages\CreateBuku::route('/create'),
            'edit' => Pages\EditBuku::route('/{record}/edit'),
        ];
    }
}
