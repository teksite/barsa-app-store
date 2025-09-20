@props(['title', 'excerpt' => null])

@php
    $skills = [
        ['name' => 'Google', 'value' => 95, 'from' => 'from-orange-900', 'to' => 'to-orange-800'],
        ['name' => 'Pinterest', 'value' => 90, 'from' => 'from-purple-900', 'to' => 'to-purple-800'],
        ['name' => 'Figma', 'value' => 85, 'from' => 'from-rose-900', 'to' => 'to-rose-800'],
        ['name' => 'Awwwards', 'value' => 80, 'from' => 'from-green-900', 'to' => 'to-green-800'],
    ];
@endphp

<div class="grid grid-cols-2 lg:grid-cols-6 *:border *:border-zinc-900 text *:p-6 bg-gradient-to-br from-zinc-900 to-zinc-950">

    @foreach($skills as $skill)
        <div>
            {{ $skill['name'] }}
            <div class="w-full mt-3">
                <div class="bg-gray-200 h-2 w-full rounded-full"
                     x-data="{
                        val: {{ $skill['value'] }},
                        width: 0,
                        opacity: 1,
                        animate() {
                            this.width = this.val;
                            setInterval(() => {
                                this.opacity = this.opacity === 1 ? 0.8 : 1;
                            }, 500); // تغییر منظم هر 500ms
                        }
                     }"
                     x-init="animate()">
                    <div class="h-2 w-2 rounded-full transition-all duration-500 bg-gradient-to-br {{ $skill['from'] }} {{ $skill['to'] }}"
                         :style="`width: ${width}%; opacity: ${opacity};`">
                    </div>
                </div>
            </div>
        </div>
    @endforeach

    <div class="col-span-2">
        <span class="h3">{{ __('your score to us') }}</span>
        <div class="flex items-center">
            @for($i = 0; $i < 4; $i++)
                <i class="tkicon fill-yellow-600 stroke-yellow-900" data-icon="star"></i>
            @endfor
            <i class="tkicon stroke-yellow-900" data-icon="star"></i>
        </div>
    </div>

</div>
