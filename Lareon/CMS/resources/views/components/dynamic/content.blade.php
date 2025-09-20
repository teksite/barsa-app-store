@props(['title', 'name','value'=>[], 'placeholder'=>null, 'required'=>false ,'open'=>false ,'accordion'=>true] )
@php($randomItem=rand(100,9999).\Illuminate\Support\Str::random(6).rand(100,9999))
<x-lareon::accordion.box :title="__($title)" :open="$open" :accordion="$accordion">

<fieldset class="fieldset">
    <legend class="legend">
        {{$title}}
    </legend>
    <div>

        @foreach($value ?? [] as $key=>$item)
            @php($rand=\Illuminate\Support\Str::random(6).rand(100,9999))
            <div class="dynamicGroup_{{$randomItem}} mb-6 border border-zinc-300 p-3 rounded-lg" id="{{$rand}}-{{$randomItem}}-{{$loop->index}}"
                 x-data="{ removeField() { this.$el.parentElement.parentElement.remove(); }}">
                <div class="mb-6 flex justify-between items-center gap-6">
                    <div class="w-full">
                        <x-lareon::input.label :title="__('title') . ' #'. ($loop->iteration)" for="dynamic_item_title-{{$rand}}-{{$loop->index}}"/>
                        <x-lareon::input.text  name="{{$name}}[{{$loop->index}}][title]" id="dynamic_item_title-{{$rand}}-{{$loop->index}}" class="block w-full" :value="$item['title'] ?? ''"/>
                    </div>
                    <div class="w-full">
                        <x-lareon::input.label :title="__('image') . ' #'. ($loop->iteration)" for="dynamic_item_image-{{$rand}}-{{$loop->index}}"/>
                        <x-lareon::input.text dir="ltr" name="{{$name}}[{{$loop->index}}][image]" id="dynamic_item_image-{{$rand}}-{{$loop->index}}" class="block w-full" :value="$item['image'] ?? ''"/>
                    </div>
                    <button type="button" class="text-red-600 deleteItemBtn" data-target="dynamic_item-{{$rand}}-{{$loop->index}}" @dblclick="removeField">
                        &times;
                    </button>
                </div>
                <div class="mb-6">
                    <x-lareon::input.label :title="__('body') . ' #'. ($loop->iteration)" for="dynamic_item_body-{{$rand}}-{{$loop->index}}"/>
                    <x-lareon::input.textarea  name="{{$name}}[{{$loop->index}}][body]" id="dynamic_item_body-{{$rand}}-{{$loop->index}}" class="block w-full" >{!! $item['body'] ?? '' !!}</x-lareon::input.textarea>
                </div>
                <div class="grid gap-6 md:grid-cols-2 mb-6">
                    <div class="w-full">
                        <x-lareon::input.label :title="__('link title') . ' #'. ($loop->iteration)" for="dynamic_item_link_title-{{$rand}}-{{$loop->index}}"/>
                        <x-lareon::input.text  name="{{$name}}[{{$loop->index}}][link_title]" id="dynamic_item_link_title-{{$rand}}-{{$loop->index}}" class="block w-full" :value="$item['link_title'] ?? ''"/>
                    </div>
                    <div class="w-full">
                        <x-lareon::input.label :title="__('link address') . ' #'. ($loop->iteration)" for="dynamic_item_link_address-{{$rand}}-{{$loop->index}}"/>
                        <x-lareon::input.text dir="ltr" name="{{$name}}[{{$loop->index}}][link_address]" id="dynamic_item_link_address-{{$rand}}-{{$loop->index}}" class="block w-full" :value="$item['link_address'] ?? ''"/>
                    </div>
                </div>
                <x-lareon::input.error :messages="get_error($errors , $name.'['.$loop->index.']')" class="my-2"/>
            </div>
        @endforeach

        <div x-data="function handler(){return { fields: [], addNewField(){this.fields.push({ txt1:'',txt2:'',txt3:'',txt4:'',txt5:''});},removeField(index){ this.fields.splice(index, 1);}}}">
            <div>
                <template x-data="{'lngth' : document.querySelectorAll('.dynamicGroup_{{$randomItem}}').length}" x-for="(field, index) in fields" :key="index">
                    <div class="dynamicGroup p-3 border border-zinc-300 rounded-lg mb-3 hover:bg-slate-50" x-bind:id="`dynamicGroup_${index + lngth + 1}`">
                        <div class="mby-3 flex justify-between items-center gap-6">
                            <div class="w-full">
                                <label x-text:="`{{__('title')}} #${index + lngth + 1}`" x-bind:for="`dynamic_new_item_title-${index + lngth + 1}`" class="block font-medium text-xs text-gray-600  mb-2">{{__('new :title',['title'=>__('title')])}}</label>
                                <x-lareon::input.text  x-bind:id="`dynamic_new_item_title-${index + lngth + 1}`" class="block w-full" x-model="field.txt1" x-bind:name="`{{$name}}[${index + lngth + 1}][title]`"/>
                            </div>
                            <div class="w-full">
                                <label x-text:="`{{__('image')}} #${index + lngth + 1}`" x-bind:for="`dynamic_new_item_image-${index + lngth + 1}`" class="block font-medium text-xs text-gray-600  mb-2">{{__('new :title',['title'=>__('image')])}}</label>
                                <x-lareon::input.text dir="ltr" x-bind:id="`dynamic_new_item_image-${index + lngth + 1}`" class="block w-full" x-model="field.txt2" x-bind:name="`{{$name}}[${index + lngth + 1}][image]`"/>
                            </div>
                            <div>
                                <button type="button" class="text-red-900" @click="removeField(index)">
                                    &times;
                                </button>
                            </div>
                        </div>
                        <div class="mby-3" >
                            <label x-text:="`{{__('body')}} #${index + lngth + 1}`" x-bind:for="`dynamic_new_item_body-${index + lngth + 1}`" class="block font-medium text-xs text-gray-600  mb-2">{{__('new :title',['title'=>__('body')])}}</label>
                            <x-lareon::input.textarea  x-bind:id="`dynamic_new_item_body-${index + lngth + 1}`" class="block w-full" x-model="field.txt3" x-bind:name="`{{$name}}[${index + lngth + 1}][body]`"></x-lareon::input.textarea>
                        </div>
                        <div class="mb-3 grid gap-6 md:grid-cols-2">
                            <div class="w-full">
                                <label x-text:="`{{__('link title')}} #${index + lngth + 1}`" x-bind:for="`dynamic_new_item_title_link-${index + lngth + 1}`" class="block font-medium text-xs text-gray-600  mb-2">{{__('new :title',['title'=>__('link title')])}}</label>
                                <x-lareon::input.text  x-bind:id="`dynamic_new_item_title_link-${index + lngth + 1}`" class="block w-full" x-model="field.txt4" x-bind:name="`{{$name}}[${index + lngth + 1}][link_title]`"/>
                            </div>
                            <div class="w-full">
                                <label x-text:="`{{__('link address')}} #${index + lngth + 1}`" x-bind:for="`dynamic_new_item_title_address-${index + lngth + 1}`" class="block font-medium text-xs text-gray-600  mb-2">{{__('new :title',['title'=>__('link address')])}}</label>
                                <x-lareon::input.text dir="ltr" x-bind:id="`dynamic_new_item_title_address-${index + lngth + 1}`" class="block w-full" x-model="field.txt5" x-bind:name="`{{$name}}[${index + lngth + 1}][link_address]`"/>
                            </div>
                        </div>
                    </div>
                </template>
                <div class="my-3">
                    <x-lareon::button.solid type="button" role="button" title="{{__('add title')}}" id="addDynamic_{{$randomItem}}"
                                            @click="addNewField()">
                        {{__('add')}}
                    </x-lareon::button.solid>

                </div>
            </div>
        </div>
    </div>
</fieldset>
</x-lareon::accordion.box>


