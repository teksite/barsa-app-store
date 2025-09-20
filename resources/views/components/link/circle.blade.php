@props(['href'])
<a  href="{{$href}}" {{$attributes->merge(['class'=>'hollow_link_circle border border-primary-100 hover:border-main_color rounded-full p-6 aspect-square text-primary-100 transition-all duration-300 hover:text-white'])}}>
      {!! $slot !!}
</a>
