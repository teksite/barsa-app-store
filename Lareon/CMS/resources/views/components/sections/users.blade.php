@props(['name' , 'title','value'=>null , 'multiple'=>false])
@php
    $random='users-select'.rand(1000,9999);
    $users= \Lareon\CMS\App\Models\User::query()->select(['id', 'name'])->get();
@endphp

<x-lareon::box>
    <x-lareon::input.label for="{{$random}}" :title="__($title)"/>

    <x-lareon::input.select name="{{$name}}" id="{{$random}}" :multiple="$multiple" class="block w-full">
        @foreach($users as $user)
            <option value="{{ $user->id }}"
            @if($multiple)
                @selected(in_array($user->id, $value))
                @else
                @selected($user->id == $value)
                @endif >
                {{ $user->name }}
            </option>
        @endforeach
    </x-lareon::input.select>
    <x-lareon::input.error :messages="$errors->get($name)"/>
</x-lareon::box>
