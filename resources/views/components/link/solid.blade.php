@props(['href'=>'#' , 'color'=>null , 'value'=>null])
@php
    $class = match (true) {
        in_array($color, ['red', 'danger'])   => 'bg-red-600 hover:bg-red-900 text-gray-50',
        in_array($color, ['green', 'create']) => 'bg-green-600 hover:bg-green-900 text-gray-50',
        in_array($color, ['blue', 'update'])  => 'bg-blue-600 hover:bg-blue-900 text-gray-50',
        in_array($color, ['yellow','warning'])=> 'bg-yellow-600 hover:bg-yellow-900 text-gray-50',
        in_array($color, ['teal','index'])    => 'bg-teal-600 hover:bg-teal-900 text-gray-50',
        in_array($color, ['secondary','index']) => 'bg-secondary_color hover:bg-secondary_hover text-gray-50',
        default => 'bg-main_color hover:bg-main_darker_color text-gray-50',
    };
@endphp
<a href="{{$href}}" {{$attributes->merge(['class'=> "rounded text-sm px-3 py-2 shadow font-semibold hover:cursor-pointer select-none $class"])}}>
    {!! $value ?? $slot !!}
</a>
