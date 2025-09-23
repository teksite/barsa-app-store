<x-lareon::admin-editor-layout type="update"  :instance="$company">
    @section('title', __('edit the :title',['title'=>__('company') . " ($company->title)"]))
    @section('description', __('in this window you can edit the :title' ,['title'=>__('company') . " ($company->title)"]))

    @section('formRoute', route('admin.companies.update', $company))
    @section('header.start')
        <x-lareon::link.btn-outline :href="route('admin.companies.index')" :title="__('all :title',['title'=>__('companies')])" color="index"/>
        <x-lareon::link.btn-outline :href="route('admin.companies.create')" :title="__('new :title',['title'=>__('companies')])" color="create" can="admin.company.create"/>
    @endsection
    @section('header.end')
        @parent
            <x-lareon::link.delete :href="route('admin.companies.destroy', $company)" can="admin.company.delete"/>
    @endsection
    @section('form')
        <x-lareon::sections.title :value="old('title') ?? $company->title" name="title" :placeholder="__('enter a unique :title',['title'=>__('title')])" :required="true"/>
        <x-lareon::sections.text :value="old('national_id', $company->national_id)" name="national_id" :title="__('national id')" type="number" :placeholder="__('enter a unique :title',['title'=>__('link')])" :required="true"/>
        <x-lareon::sections.text :value="old('url', $company->url)" name="url" :title="__('url')" type="url" :placeholder="__('enter a unique :title',['title'=>__('link')])" :required="false"/>
        <x-lareon::sections.text :value="old('phone', $company->phone)" name="phone" :title="__('phone')" type="tel" :placeholder="__('enter a unique :title',['title'=>__('link')])" :required="false"/>
        <x-lareon::sections.text :value="old('telephone', $company->telephone)" name="telephone" :title="__('telephone')" type="tel" :placeholder="__('enter a unique :title',['title'=>__('link')])" :required="false"/>
        <x-lareon::sections.text :value="old('email', $company->email)" name="email" :title="__('email')" type="email" :placeholder="__('enter a unique :title',['title'=>__('link')])" :required="false"/>

    @endsection
    @section('aside')
        <x-company::sections.company-type :value="old('type' , $company->type)" :required="true"/>

    @endsection
</x-lareon::admin-editor-layout>
