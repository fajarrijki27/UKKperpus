<x-filament::page>

    {{-- FORM --}}
    <div class="bg-white rounded-xl shadow p-6 mb-6">
        {{ $this->form }}

        <br>

        <x-filament::button wire:click="loadLaporan" icon="heroicon-o-magnifying-glass">
            Tampilkan Laporan
        </x-filament::button>
    </div>

    {{-- HASIL --}}
    @if ($showResult)
        <div class="bg-white rounded-xl shadow p-4">

            <table class="w-full text-sm border">
                <thead class="bg-gray-100 border-b">
                    <tr>
                        <th class="p-2 text-center">No</th>
                        <th class="p-2">Kode</th>
                        <th class="p-2">Nama</th>
                        <th class="p-2">Tanggal</th>
                        <th class="p-2">Total Buku</th>
                        <th class="p-2">Denda</th>
                    </tr>
                </thead>

                <tbody>
                    @forelse ($this->data as $p)
                        <tr class="border-b">
                            <td class="p-2 text-center">
                                {{ ($this->data->currentPage() - 1) * $this->data->perPage() + $loop->iteration }}
                            </td>
                            <td class="p-2">{{ $p->kode_peminjaman }}</td>
                            <td class="p-2">{{ $p->anggota->user->name }}</td>
                            <td class="p-2">
                                {{ \Carbon\Carbon::parse($p->tanggal_pinjam)->format('d M Y') }}
                            </td>
                            <td class="p-2">
                                {{ $p->details->sum('qty') }}
                            </td>
                            <td class="p-2">
                                Rp {{ number_format(optional($p->pengembalian)->denda ?? 0, 0, ',', '.') }}
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="6" class="text-center py-4 text-gray-500">
                                Tidak ada data
                            </td>
                        </tr>
                    @endforelse
                </tbody>
            </table>

            {{-- INFO + PAGINATION --}}
            <div style="
                            margin-top:30px;
                            display:flex;
                            flex-wrap:wrap;
                            justify-content:space-between;
                            align-items:center;
                            gap:15px;
                        ">

                {{-- INFO --}}
                <div style="font-size:14px; color:gray;">
                    Showing {{ $this->data->firstItem() }}
                    sampai {{ $this->data->lastItem() }}
                    dari {{ $this->data->total() }} data
                </div>

                {{-- PAGINATION --}}
                @php
                    $current = $this->data->currentPage();
                    $last = $this->data->lastPage();
                @endphp

                <div style="display:flex; gap:6px;">

                    {{-- PREV --}}
                    @if ($this->data->onFirstPage())
                        <span style="padding:6px 12px; background:#eee; border-radius:6px;">Prev</span>
                    @else
                        <button wire:click="previousPage"
                            style="padding:6px 12px; background:#f59e0b; color:white; border-radius:6px;">
                            Prev
                        </button>
                    @endif

                    {{-- FIRST --}}
                    <button wire:click="gotoPage(1)" style="padding:6px 12px; border-radius:6px;
                                    background: {{ $current == 1 ? '#f59e0b' : '#eee' }};
                                    color: {{ $current == 1 ? 'white' : 'black' }};">
                        1
                    </button>

                    {{-- DOTS AWAL --}}
                    @if ($current > 3)
                        <span style="padding:6px;">...</span>
                    @endif

                    {{-- MIDDLE --}}
                    @for ($i = max(2, $current - 1); $i <= min($last - 1, $current + 1); $i++)
                        <button wire:click="gotoPage({{ $i }})" style="padding:6px 12px; border-radius:6px;
                                                                    background: {{ $current == $i ? '#f59e0b' : '#eee' }};
                                                                    color: {{ $current == $i ? 'white' : 'black' }};">
                            {{ $i }}
                        </button>
                    @endfor

                    {{-- DOTS AKHIR --}}
                    @if ($current < $last - 2)
                        <span style="padding:6px;">...</span>
                    @endif

                    {{-- LAST --}}
                    @if ($last > 1)
                        <button wire:click="gotoPage({{ $last }})" style="padding:6px 12px; border-radius:6px;
                                                                    background: {{ $current == $last ? '#f59e0b' : '#eee' }};
                                                                    color: {{ $current == $last ? 'white' : 'black' }};">
                            {{ $last }}
                        </button>
                    @endif

                    {{-- NEXT --}}
                    @if ($this->data->hasMorePages())
                        <button wire:click="nextPage"
                            style="padding:6px 12px; background:#f59e0b; color:white; border-radius:6px;">
                            Next
                        </button>
                    @else
                        <span style="padding:6px 12px; background:#eee; border-radius:6px;">Next</span>
                    @endif

                </div>

            </div>

        </div>

        {{-- BUTTON --}}
        <div class="mt-5 flex justify-end gap-3">
            <x-filament::button color="success" icon="heroicon-o-printer" wire:click="printLaporan"
                :disabled="$this->data->count() === 0">
                Print Data
            </x-filament::button>
        </div>
    @endif

</x-filament::page>

<script>
    window.addEventListener('openPrint', event => {
        window.open(event.detail.url, '_blank');
    });
</script>