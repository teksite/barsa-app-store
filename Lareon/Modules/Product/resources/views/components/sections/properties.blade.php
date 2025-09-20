@props(['open'=>true ,'value'=>[]])
@php
    $groups=\Lareon\Modules\Product\App\Models\Group::query()->with('properties')->get();
@endphp
<x-lareon::accordion.box :title="__('properties')" :open="$open">
  @foreach($groups as $group)
        <x-lareon::input.label :title="$group->title"  />
        <select  aria-label="{{__('properties') ."- $group->title"}}" id="group-{{$group->id}}" class="block w-full select-box" name="properties[]" multiple data-creation="false" data-plugin="remove_button">
            @foreach($group->properties as $property)
                <option {{ in_array($property->id , $value) ? 'selected': ''}}  value="{{$property->id}}">
                    {{$property->title}}
                </option>
            @endforeach
        </select>
  @endforeach
</x-lareon::accordion.box>
<x-lareon::input.error :messages="$errors->get('tags')" class="mt-2"/>
