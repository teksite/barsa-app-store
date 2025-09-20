@props(['value'=>[], 'required'=>false ,'open'=>false ,'accordion'=>true] )

<x-lareon::accordion.box :title="__('contact')" :open="$open" :accordion="$accordion">
    <fieldset class="fieldset">
        <section>
           <div class="grid gap-6 md:grid-cols-2 mb-6">
               <div class="w-full">
                   <x-lareon::input.label :title="__('name')" for="contact_name"/>
                   <x-lareon::input.text name="contact[name]" id="contact_name" class="block w-full" :value="$value['name'] ?? ''"/>
               </div>
               <div class="w-full">
                   <x-lareon::input.label :title="__('image')" for="contact_image"/>
                   <x-lareon::input.text dir="ltr" name="contact[image]" id="contact_image" class="block w-full" :value="$value['image'] ?? ''"/>
               </div>
           </div>
            <div class="w-full mb-6">
                <x-lareon::input.label :title="__('description')" for="contact_body"/>
                <x-lareon::input.textarea name="contact[body]" id="contact_body" class="block w-full">{!! $value['body'] ?? '' !!}</x-lareon::input.textarea>
            </div>
            <div class="grid gap-6 md:grid-cols-2 mb-6">
                <div class="w-full">
                    <x-lareon::input.label :title="__('linkedin')" for="contact_linkedin"/>
                    <x-lareon::input.text name="contact[link][linkedin]" id="contact_linkedin" class="block w-full" :value="$value['link']['linkedin'] ?? ''"/>
                </div>
                <div class="w-full">
                    <x-lareon::input.label :title="__('whatsapp')" for="contact_whatsapp"/>
                    <x-lareon::input.text name="contact[link][whatsapp]" id="contact_whatsapp" class="block w-full" :value="$value['link']['whatsapp'] ?? ''"/>
                </div>
                <div class="w-full">
                    <x-lareon::input.label :title="__('email')" for="contact_email"/>
                    <x-lareon::input.text name="contact[link][email]" id="contact_email" class="block w-full" :value="$value['link']['email'] ?? ''"/>
                </div>
                <div class="w-full">
                    <x-lareon::input.label :title="__('telegram')" for="contact_telegram"/>
                    <x-lareon::input.text name="contact[link][telegram]" id="contact_telegram" class="block w-full" :value="$value['link']['telegram'] ?? ''"/>
                </div>
            </div>
        </section>

    </fieldset>
</x-lareon::accordion.box>


