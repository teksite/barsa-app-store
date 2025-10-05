<x-lareon::panel-editor-layout type="create">
@section('title', __('new :title',['title'=>__('version')]) ." ($product->title)")
    @section('description', __('in this window you can create a new :title',['title'=>__('version')]))
    @section('formRoute', route('panel.products.versions.store',$product))
    @section('header.start')
        <x-lareon::link.btn-outline :href="route('panel.products.versions.index',$product)" :title="__('all :title',['title'=>__('versions')])" color="index"/>
    @endsection
    @section('form')
        <x-lareon::sections.title :value="old('title')" name="title" :placeholder="__('enter a unique :title',['title'=>__('title')])" :required="true"/>
        <x-lareon::sections.editor :title="__('changes')" name="changes" :placeholder="__('write a :title' ,['title'=>__('changes')])" :required="false" rows="30" :open="true">{{old('changes')}}</x-lareon::sections.editor>

    @endsection
    @section('aside')
        <x-lareon::sections.time :title="__('published date')" name="published_at" :required="false" :open="true" :value="old('published_at')"/>
        <x-product::sections.release-type  :required="true" :open="true" :value="old('release_type')"/>
    @endsection

/<x-lareon::panel-editor-layout>
