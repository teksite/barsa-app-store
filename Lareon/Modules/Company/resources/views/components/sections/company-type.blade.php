@props(['open'=>true ,'value'=>null])
<div xmlns:x-lareon="http://www.w3.org/1999/html">
    <x-lareon::accordion.box :title="__('type')" :open="$open">
        <x-lareon::input.select aria-label="{{__('type')}}" id="person-type-box" class="block w-full " name="type">
            @foreach(\Lareon\Modules\Company\App\Enums\CompanyTypeEnum::cases() as $type)
                <option @selected($type->value == $value)  value="{{$type->value}}">
                    {{$type->getName()}}
                </option>
            @endforeach
        </x-lareon::inpu>
    </x-lareon::accordion.box>
    <x-lareon::input.error :messages="$errors->get('type')" class="mt-2"/>
</div>
