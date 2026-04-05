<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UserResource\Pages;
use App\Filament\Resources\UserResource\RelationManagers;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Notifications\Notification;
use Illuminate\Support\Facades\Auth;
use Filament\Tables\Columns\TextColumn;

class UserResource extends Resource
{
    protected static ?string $model = User::class;
    protected static ?string $navigationGroup = 'Menu';
    protected static ?string $navigationLabel = 'User';
    protected static ?string $modelLabel = 'User';
    protected static ?string $navigationIcon = 'heroicon-o-user';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('name')
                    ->label('Nama Pengguna')
                    ->required()
                    ->maxLength(255),

                TextInput::make('email')
                    ->label('Email')
                    ->email()
                    ->required()
                    ->maxLength(255)
                    ->live(onBlur: true)
                    ->afterStateUpdated(function ($state, callable $set, $record) {

                        if (!$state) {
                            return;
                        }

                        $email = strtolower(trim($state));

                        if ($email !== $state) {
                            $set('email', $email);
                        }

                        $exists = User::where('email', $email)
                            ->when($record, fn($q) => $q->where('id', '!=', $record->id))
                            ->exists();

                        if ($exists) {
                            Notification::make()
                                ->title('Email Sudah Terdaftar')
                                ->body("Email {$email} sudah ada di sistem.")
                                ->danger()
                                ->send();

                            $set('email', null);
                        }
                    }),

                TextInput::make('password')
                    ->password()
                    ->required()
                    ->revealable()
                    ->default('password'),

                Select::make('roles')
                    ->label('Role User')
                    ->required()
                    ->placeholder('Pilih Role User')
                    ->relationship(
                        name: 'roles',
                        titleAttribute: 'name',
                        modifyQueryUsing: function (Builder $query) {
                            $user = Auth::user();

                            // Jika user adalah Petugas (bukan SuperAdmin)
                            if ($user->hasRole('Petugas') && !$user->hasRole('SuperAdmin')) {
                                $query->where('name', '!=', 'SuperAdmin');
                            }
                        }
                    )
                    ->disabled(
                        fn() =>
                        !Auth::user()->hasAnyRole(['SuperAdmin', 'Petugas'])
                    ),
            ]);
    }

    public static function table(Table $table): Table
    {
        $user = Auth::user();

        $isSuperAdmin = $user->roles->pluck('name')->contains('SuperAdmin');
        $isAdmin = $user->roles->pluck('name')->contains('Petugas');

        return $table
            ->query(
                User::query()
                    // kalau bukan SuperAdmin & bukan Admin → hanya data sendiri
                    ->when(
                        !$isSuperAdmin && !$isAdmin,
                        fn(Builder $query) => $query->where('id', $user->id)
                    )

                    // kalau Admin → tampilkan semua kecuali SuperAdmin
                    ->when(
                        $isAdmin && !$isSuperAdmin,
                        fn(Builder $query) =>
                        $query->whereDoesntHave('roles', function ($q) {
                            $q->where('name', 'SuperAdmin');
                        })
                    )
            )
            ->columns([
                Tables\Columns\TextColumn::make('name'),
                Tables\Columns\TextColumn::make('email'),
                Tables\Columns\TextColumn::make('roles.name'),

            ])
            ->filters([
                Tables\Filters\Filter::make('search_user')
                    ->label('Cari User')
                    ->form([
                        TextInput::make('keyword')
                            ->label('Nama / Email')
                            ->placeholder('Masukkan nama atau email'),
                    ])
                    ->query(function (Builder $query, array $data) {
                        if (!$data['keyword']) {
                            return;
                        }

                        $query->where(function ($q) use ($data) {
                            $q->where('name', 'like', '%' . $data['keyword'] . '%')
                                ->orWhere('email', 'like', '%' . $data['keyword'] . '%');
                        });
                    })
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
            'index' => Pages\ListUsers::route('/'),
            'create' => Pages\CreateUser::route('/create'),
            'edit' => Pages\EditUser::route('/{record}/edit'),
        ];
    }
}
