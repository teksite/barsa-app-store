@props(['open'=>true ,'value'=>null])
<div xmlns:x-lareon="http://www.w3.org/1999/html">
    <x-lareon::accordion.box :title="__('recommend type')" :open="$open">
        <x-lareon::input.select aria-label="{{__('recommend type')}}" id="release-box" class="block w-full " name="recommend_type">
            @foreach(\Lareon\Modules\Product\App\Enums\RecommendTypeEnum::cases() as $type)
                <option @selected($type->value == $value)  value="{{$type->value}}">
                    {{$type->getName()}}
                </option>
            @endforeach
        </x-lareon::inpu>
    </x-lareon::accordion.box>
    <x-lareon::input.error :messages="$errors->get('recommend_type')" class="mt-2"/>
</div>
