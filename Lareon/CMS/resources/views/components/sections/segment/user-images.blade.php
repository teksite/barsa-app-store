@props(['data'=>[]])

<x-lareon::box class="mb-6">
    <h2 class="mb-3">
        {{__('other images')}}
    </h2>
    <div class="grid md:grid-cols-2 gap-6">
        @foreach(config('user-info.images',[]) as $key=>$condition)
            <div class="">
                <div class="flex items-center gap-3 mb-1">
                    <x-lareon::input.checkbox :value="1" id="meta.images.{{$key}}.active" name="meta[images][{{$key}}][active]"
                                              :checked="old('meta.images.'.$key.'.active' , $data[$key]['active'] ?? 0)"/>
                    <x-lareon::input.label :title="__($key)" for="meta.images.{{$key}}.active"
                                           class="!mb-0"/>
                </div>
                <div>
                    @if($condition['type'] === 'image')
                        <x-lareon::sections.image size="800*1200" type="avatar"
                            :value="old('meta.images.'.$key.'.value') ?? $data[$key]['value'] ?? ''"
                             name="meta[images][{{$key}}][value]"/>
                    @else

                    @endif
                </div>
            </div>
        @endforeach
    </div>
</x-lareon::box>

