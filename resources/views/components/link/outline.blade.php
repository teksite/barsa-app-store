@props(['href'=>null , 'color'=>null , 'value'=>null ])
@php

    $classGroup=match (true){
        in_array($color ,['red','danger'])=>'border-red-600 text-red-600',
        in_array($color ,['create','green'])=>'border-green-600 text-green-600',
        in_array($color ,['update','blue'])=>'border-blue-600 text-blue-600',
        in_array($color ,['yellow','warning'])=>'border-yellow-600  text-yellow-600',
        in_array($color ,['teal','index'])=>'border-teal-600 text-teal-600',
        in_array($color ,['secondary','index'])=>'border-secondary_color text-secondary_color',
         default=> 'border-main_color text-main_color'
    };
@endphp
@props(['href'])
<a  href="{{$href}}" {{$attributes->merge(['class'=>"outline_link border rounded-lg px-3 py-2 transition-all duration-300 $classGroup"])}}>
    {!! $value ?? $slot ?? '' !!}
</a>


