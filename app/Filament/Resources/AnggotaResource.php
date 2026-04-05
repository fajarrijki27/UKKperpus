<?php

namespace App\Filament\Resources;

use App\Filament\Resources\AnggotaResource\Pages;
use App\Filament\Resources\AnggotaResource\RelationManagers;
use App\Models\Anggota;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use App\Models\User;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class AnggotaResource extends Resource
{
    protected static ?string $model = Anggota::class;
    protected static ?string $navigationGroup = 'Menu';
    protected static ?string $navigationLabel = 'Anggota';
    protected static ?string $modelLabel = 'Anggota';
    protected static ?string $navigationIcon = 'heroicon-o-identification';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('user_id')
                    ->label('Nama Pengguna')
                    ->searchable()
                    ->required()
                    ->reactive()
                    ->live()

                    // AUTO SET USER LOGIN
                    ->default(function () {
                        $user = auth()->user();

                        return $user->hasAnyRole(['Petugas', 'SuperAdmin'])
                            ? null
                            : $user->id;
                    })

                    // ✅ DISABLE kalau bukan Admin / SuperAdmin
                    ->disabled(fn() => !auth()->user()->hasAnyRole(['Petugas', 'SuperAdmin']))
                    ->dehydrated()

                    ->options(function (?Anggota $record) {

                        $usedUserIds = Anggota::query()
                            ->when(
                                $record,
                                fn($q) => $q->where('id', '!=', $record->id)
                            )
                            ->pluck('user_id')
                            ->toArray();

                        return User::query()
                            ->whereNotIn('id', $usedUserIds)
                            ->whereDoesntHave('roles', function ($q) {
                                $q->whereIn('name', ['SuperAdmin', 'Petugas']);
                            })
                            ->pluck('name', 'id');
                    }),

                TextInput::make('nis')
                    ->label('NIS')
                    ->unique(ignoreRecord: true)
                    ->reactive()
                    ->hidden(function (callable $get) {
                        $userId = $get('user_id');
                        if (!$userId)
                            return false;

                        return User::find($userId)?->roles->pluck('name')->contains('Guru');
                    })
                    ->required(function (callable $get) {
                        $userId = $get('user_id');
                        if (!$userId)
                            return true;

                        return !User::find($userId)?->roles->pluck('name')->contains('Guru');
                    }),

                Select::make('kelas')
                    ->options([
                        'X-TP' => 'X-TP',
                        'X-TKR' => 'X-TKR',
                        'X-TBSM' => 'X-TBSM',
                        'X-TJKT' => 'X-TJKT',
                        'X-PPLG' => 'X-PPLG',

                        'XI-TP' => 'XI-TP',
                        'XI-TKR' => 'XI-TKR',
                        'XI-TBSM' => 'XI-TBSM',
                        'XI-TJKT' => 'XI-TJKT',
                        'XI-PPLG' => 'XI-PPLG',

                        'XII-TP' => 'XII-TP',
                        'XII-TKR' => 'XII-TKR',
                        'XII-TBSM' => 'XII-TBSM',
                        'XII-TJKT' => 'XII-TJKT',
                        'XII-PPLG' => 'XII-PPLG',
                    ])
                    ->native(false)
                    ->reactive()
                    ->hidden(function (callable $get) {
                        $userId = $get('user_id');
                        if (!$userId)
                            return false;

                        return User::find($userId)?->roles->pluck('name')->contains('Guru');
                    })
                    ->required(function (callable $get) {
                        $userId = $get('user_id');
                        if (!$userId)
                            return true;

                        return !User::find($userId)?->roles->pluck('name')->contains('Guru');
                    }),

                Select::make('jenis_kelamin')
                    ->label('Jenis Kelamin')
                    ->options([
                        'Laki-laki' => 'Laki-laki',
                        'Perempuan' => 'Perempuan'
                    ])
                    ->required(),

                TextInput::make('no_hp')
                    ->label('No. Telepon')
                    ->tel()
                    ->placeholder('0812 3456 7890')
                    ->live()
                    ->afterStateUpdated(function ($state, callable $set) {
                        if (!$state)
                            return;

                        $number = preg_replace('/\D+/', '', $state);

                        if (str_starts_with($number, '62')) {
                            $number = '0' . substr($number, 2);
                        }

                        $number = substr($number, 0, 13);

                        $formatted = trim(chunk_split($number, 4, ' '));

                        if ($formatted !== $state) {
                            $set('no_hp', $formatted);
                        }
                    })
                    ->helperText('maks. 13 digit'),

                DatePicker::make('tanggal_lahir')
                    ->label('Tanggal Lahir'),

                Textarea::make('alamat')
                    ->autosize()
                    ->required()
                    ->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        $user = Auth::user();

        $isAllowed = $user->roles
            ->pluck('name')
            ->intersect(['SuperAdmin', 'Petugas'])
            ->isNotEmpty();

        return $table
            ->query(
                Anggota::query()->when(
                    !$isAllowed,
                    fn(Builder $query) => $query->where('user_id', $user->id)
                )
            )
            ->columns([
                TextColumn::make('user.name')
                    ->label('Nama'),

                TextColumn::make('nis')
                    ->label('NIS'),

                TextColumn::make('kelas')
                    ->badge()
                    ->color(fn(string $state): string => match ($state) {
                        'X-TP' => 'success',
                        'X-TKR' => 'danger',
                        'X-TBSM' => 'warning',
                        'X-TJKT' => 'info',
                        'X-PPLG' => 'pplg',

                        'XI-TP' => 'success',
                        'XI-TKR' => 'danger',
                        'XI-TBSM' => 'warning',
                        'XI-TJKT' => 'info',
                        'XI-PPLG' => 'pplg',

                        'XII-TP' => 'success',
                        'XII-TKR' => 'danger',
                        'XII-TBSM' => 'warning',
                        'XII-TJKT' => 'info',
                        'XII-PPLG' => 'pplg',
                    }),

                TextColumn::make('no_hp')
                    ->label('No. Handphone'),
            ])
            ->filters([

                // 🔍 SEARCH NAMA + NIS
                Tables\Filters\Filter::make('search')
                    ->label('Cari Nama / NIS')
                    ->form([
                        TextInput::make('keyword')
                            ->placeholder('Masukkan nama atau NIS'),
                    ])
                    ->query(function (Builder $query, array $data) {
                        if (!$data['keyword'])
                            return;

                        $query->where(function ($q) use ($data) {
                            $q->where('nis', 'like', '%' . $data['keyword'] . '%')
                                ->orWhereHas('user', function ($q2) use ($data) {
                                    $q2->where('name', 'like', '%' . $data['keyword'] . '%');
                                });
                        });
                    })
                    ->visible(fn() => Auth::user()->hasAnyRole(['SuperAdmin', 'Petugas'])),

                // 🎯 FILTER KELAS
                Tables\Filters\SelectFilter::make('kelas')
                    ->label('Filter Kelas')
                    ->options([
                        'X-TP' => 'X-TP',
                        'X-TKR' => 'X-TKR',
                        'X-TBSM' => 'X-TBSM',
                        'X-TJKT' => 'X-TJKT',
                        'X-PPLG' => 'X-PPLG',

                        'XI-TP' => 'XI-TP',
                        'XI-TKR' => 'XI-TKR',
                        'XI-TBSM' => 'XI-TBSM',
                        'XI-TJKT' => 'XI-TJKT',
                        'XI-PPLG' => 'XI-PPLG',

                        'XII-TP' => 'XII-TP',
                        'XII-TKR' => 'XII-TKR',
                        'XII-TBSM' => 'XII-TBSM',
                        'XII-TJKT' => 'XII-TJKT',
                        'XII-PPLG' => 'XII-PPLG',
                    ])
                    ->visible(fn() => Auth::user()->hasAnyRole(['SuperAdmin', 'Petugas'])),
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
            'index' => Pages\ListAnggotas::route('/'),
            'create' => Pages\CreateAnggota::route('/create'),
            'edit' => Pages\EditAnggota::route('/{record}/edit'),
        ];
    }
}
