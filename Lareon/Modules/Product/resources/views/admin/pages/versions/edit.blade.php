<x-lareon::admin-editor-layout type="update"  :instance="$version">
    @section('title', __('edit the :title',['title'=>__('version') . " ($version->title)"]))
    @section('description', __('in this window you can edit the :title of :name' ,['title'=>__('version') , 'name'=>__('product') . " ($product->title)"]))

    @section('formRoute', route('admin.products.update', $product))
    @section('header.start')
        <x-lareon::link.btn-outline :href="route('admin.products.versions.index',$product)" :title="__('all :title',['title'=>__('versions')])" color="index"/>
        <x-lareon::link.btn-outline :href="route('admin.products.versions.create',$product)" :title="__('new :title',['title'=>__('version')])" color="create" can="admin.product.edit"/>
    @endsection
    @section('header.end')
        @parent
            <x-lareon::link.delete :href="route('admin.products.versions.destroy', [$product, $version])" can="admin.product.edit"/>
    @endsection
    @section('form')
        <x-lareon::sections.title :value="old('title', $version->title)" name="title" :placeholder="__('enter a unique :title',['title'=>__('title')])" :required="true"/>
        <x-lareon::sections.editor :title="__('changes')" name="changes" :placeholder="__('write a :title' ,['title'=>__('changes')])" :required="false" rows="30" :open="true">{{old('changes', $version->changes)}}</x-lareon::sections.editor>

    @endsection
    @section('aside')
        <x-lareon::sections.time :title="__('published date')" name="published_at" :required="false" :open="true" :value="old('published_at' ,$version->published_at?->format('Y-m-d'))"/>
        <x-product::sections.release-type  :required="true" :open="true" :value="old('release_type' , $version->release_type)"/>
    @endsection
</x-lareon::admin-editor-layout>
