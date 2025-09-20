@props(['data'=>[]])

<x-lareon::box class="mb-6">
    <h2 class="mb-3">
        {{__('general data')}}
    </h2>
    <div class="grid md:grid-cols-2 gap-6">
        @foreach(config('user-info.general',[]) as $key=>$condition)
            <div class="{{$condition['type'] == 'textarea' ? 'md:col-span-2' : ''}}">
                <div class="flex items-center gap-3 mb-1">
                    <x-lareon::input.checkbox :value="1" id="meta.general.{{$key}}.active"
                                              name="meta[general][{{$key}}][active]"
                                              :checked="old('meta.general.'.$key.'.active' , $data[$key]['active'] ?? 0)"/>
                    <x-lareon::input.label :title="__($key)" for="meta.general.{{$key}}.active" class="!mb-0"/>
                </div>
                <div>
                    @if($condition['type'] === 'textarea')
                        <x-lareon::input.textarea :title="__($key)"
                                                  name="meta[general][{{$key}}][value]">{{old('meta.general.'.$key.'.value') ?? $data[$key]['value'] ?? ''}}</x-lareon::input.textarea>
                    @else
                        <x-lareon::input.text type="{{$condition['type']}}"
                                              :value="old('meta.general.'.$key.'.value') ?? $data[$key]['value'] ?? ''"
                                              :title="__($key)" name="meta[general][{{$key}}][value]"/>
                    @endif
                </div>
            </div>
        @endforeach
    </div>
</x-lareon::box>

