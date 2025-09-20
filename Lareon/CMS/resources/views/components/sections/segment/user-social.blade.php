@props(['data'=>[]])

<x-lareon::box class="mb-6">
    <h2 class="mb-3">
        {{__('social media')}}
    </h2>
    <div class="grid md:grid-cols-2 gap-6 mn-6">
        @foreach(config('user-info.social',[]) as $key=>$condition)
            <div class="{{$condition['type'] == 'textarea' ? 'md:col-span-2' : ''}}">
                <div class="flex items-center gap-3 mb-1">
                    <x-lareon::input.checkbox :value="1" id="meta.social.{{$key}}.active"
                                              name="meta[social][{{$key}}][active]"
                                              :checked="old('meta.social.'.$key.'.active' , $data[$key]['active'] ?? 0)"/>
                    <x-lareon::input.label :title="__($key)" for="meta.social.{{$key}}.active" class="!mb-0"/>
                </div>
                <div>
                    @if($condition['type'] === 'textarea')
                        <x-lareon::input.textarea :title="__($key)"
                                                  name="meta[social][{{$key}}][value]">{{old('meta.social.'.$key.'.value') ?? $data[$key]['value'] ?? ''}}</x-lareon::input.textarea>
                    @else
                        <x-lareon::input.text type="{{$condition['type']}}"
                                              :value="old('meta.social.'.$key.'.value') ?? $data[$key]['value'] ?? ''"
                                              :title="__($key)" name="meta[social][{{$key}}][value]"/>
                    @endif
                </div>
            </div>
        @endforeach
    </div>
</x-lareon::box>
