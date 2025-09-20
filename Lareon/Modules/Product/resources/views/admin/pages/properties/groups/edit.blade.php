<x-lareon::admin-editor-layout type="update"  :instance="$group">
    @section('title', __('edit the :title',['title'=>__('group'). " ($group->title)"]))
    @section('description', __('in this window you can edit the :title' ,['title'=>__('group') . " ($group->title)"]))
    @section('formRoute', route('admin.products.groups.update', $group))
    @section('header.start')
        <x-lareon::link.btn-outline :href="route('admin.products.groups.index')" :title="__('all :title',['title'=>__('groups')])" color="index"/>
        <x-lareon::link.btn-outline :href="route('admin.products.groups.properties.index', $group)" :title="__('all :title',['title'=>__('properties')])" color='white'/>
    @endsection
    @section('header.end')
        @parent
        <x-lareon::link.delete :href="route('admin.products.groups.destroy', $group)" can="admin.product.property.delete"/>
    @endsection
    @section('form')
        <x-lareon::box>
            <x-lareon::sections.text :value="$group->title" :title="__('title')" name="title" :placeholder="__('enter a unique :title',['title'=>__('title')])" :required="true"/>
            <x-lareon::sections.text :value="$group->icon" :title="__('icon')" name="icon" :placeholder="__('write a :title',['title'=>__('icon')])" :required="false"/>
        </x-lareon::box>
    @endsection
</x-lareon::admin-editor-layout>
