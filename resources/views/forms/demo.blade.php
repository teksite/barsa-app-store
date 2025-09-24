@props(['title'])
@php($random = rand(100, 999))

<input type="hidden" name="software[]" value="{{$title ?? __(config('app.name'))}}">
<input type="hidden" name="fromWhere" value="{{request()->url()}}">
<div class="grid gap-6 md:grid-cols-2 lg:grid-cols-1 xl:grid-cols-2 mb-6">
    <div>
        <x-input.label for="name_{{$random}}" :title="__('name and lastname')" class="text-start"/>
        <x-input.text id="name_{{$random}}" class="block w-full" type="text" name="name" :value="old('name')" required
                      autocomplete="name" placeholder="{{__('full name')}}"/>
        <x-input.error :messages="$errors->get('name')" class="mt-2"/>
    </div>
    <div>
        <x-input.label for="company_{{$random}}" :title="__('company name')" class="text-start"/>
        <x-input.text id="company_{{$random}}" class="block w-full" type="text" name="company" :value="old('company')"
                      required autocomplete="organization" placeholder="{{__('company name')}}"/>
        <x-input.error :messages="$errors->get('company')" class="mt-2"/>
    </div>
</div>

<div class="grid gap-6 md:grid-cols-2 lg:grid-cols-1 xl:grid-cols-2 mb-6">
    <div>
        <x-input.label for="phone_{{$random}}" :title="__('phone')" class="text-start"/>
        <x-input.text id="phone_{{$random}}" class="block w-full" type="text" name="phone" :value="old('phone')"
                      required autocomplete="tel" inputmode="tel" placeholder="021XXXXXXXX یا 09xxxxxxxxx"/>
        <x-input.error :messages="$errors->get('phone')" class="mt-2"/>
    </div>
    <div>
        <x-input.label for="email_{{$random}}" :title="__('email')" class="text-start"/>
        <x-input.text id="email_{{$random}}" class="block w-full" type="email" name="email" :value="old('email')"
                      required autocomplete="email" inputmode="email" placeholder="example@example.com"/>
        <x-input.error :messages="$errors->get('email')" class="mt-2"/>
    </div>
</div>

<div class="grid gap-6 md:grid-cols-2 lg:grid-cols-1 xl:grid-cols-2 mb-6">
    <div>
        <x-input.label for="activities" :title="__('activities of company')" class="text-start"/>
        <x-input.text id="activities" class="block w-full" type="text" name="activities" :value="old('activities')"
                      placeholder="{{__('activities of company')}}"/>
        <x-input.error :messages="$errors->get('activities')" class="mt-2"/>
    </div>
</div>
