@props(['open'=>true ,'value'=>null])
<div xmlns:x-lareon="http://www.w3.org/1999/html">
    <x-lareon::accordion.box :title="__('release type')" :open="$open">
        <x-lareon::input.select aria-label="{{__('release type')}}" id="release-box" class="block w-full " name="release_type">
            @foreach(\Lareon\Modules\Product\App\Enums\ReleaseTypeEnum::cases() as $type)
                <option @selected($type->value == $value)  value="{{$type->value}}">
                    {{$type->getName()}}
                </option>
            @endforeach
        </x-lareon::inpu>
    </x-lareon::accordion.box>
    <x-lareon::input.error :messages="$errors->get('release_type')" class="mt-2"/>
</div>
