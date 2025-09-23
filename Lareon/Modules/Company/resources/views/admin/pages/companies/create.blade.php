<x-lareon::admin-editor-layout>
    @section('title', __('new :title',['title'=>__('company')]))
    @section('description', __('in this window you can create a new :title',['title'=>__('company')]))
    @section('formRoute', route('admin.companies.store'))
    @section('header.start')
        <x-lareon::link.btn-outline :href="route('admin.companies.index')" :title="__('all :title',['title'=>__('companies')])" color="index"/>
    @endsection
    @section('form')
        <x-lareon::sections.title :value="old('title')" name="title" :placeholder="__('enter a unique :title',['title'=>__('title')])" :required="true"/>
        <x-lareon::sections.text :value="old('national_id')" name="national_id" :title="__('national id')" type="number" :placeholder="__('enter a unique :title',['title'=>__('link')])" :required="true"/>
        <x-lareon::sections.text :value="old('url')" name="url" :title="__('url')" type="url" :placeholder="__('enter a unique :title',['title'=>__('link')])" :required="false"/>
        <x-lareon::sections.text :value="old('phone')" name="phone" :title="__('phone')" type="tel" :placeholder="__('enter a unique :title',['title'=>__('link')])" :required="false"/>
        <x-lareon::sections.text :value="old('telephone')" name="telephone" :title="__('telephone')" type="tel" :placeholder="__('enter a unique :title',['title'=>__('link')])" :required="false"/>
        <x-lareon::sections.text :value="old('email')" name="email" :title="__('email')" type="email" :placeholder="__('enter a unique :title',['title'=>__('link')])" :required="false"/>

    @endsection
    @section('aside')
        <x-company::sections.company-type :value="old('type')" :required="true"/>

    @endsection

</x-lareon::admin-editor-layout>
