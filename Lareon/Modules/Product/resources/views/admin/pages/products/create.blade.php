<x-lareon::admin-editor-layout>
    @section('title', __('new :title',['title'=>__('product')]))
    @section('description', __('in this window you can create a new :title',['title'=>__('product')]))
    @section('formRoute', route('admin.products.store'))
    @section('header.start')
        <x-lareon::link.btn-outline :href="route('admin.products.index')" :title="__('all :title',['title'=>__('products')])" color="index"/>
    @endsection
    @section('form')
        <x-lareon::sections.title :value="old('title')" name="title" :placeholder="__('enter a unique :title',['title'=>__('title')])" :required="true"/>

        <x-lareon::sections.textarea :title="__('excerpt')" name="excerpt" :placeholder="__('write a :title' ,['title'=>__('excerpt')])" :required="false" :open="false">{{old('excerpt')}}</x-lareon::sections.textarea>
        <x-lareon::sections.editor :title="__('body')" name="body" :placeholder="__('write a :title' ,['title'=>__('body')])" :required="false" rows="30" :open="true">{{old('body')}}</x-lareon::sections.editor>

        <x-lareon::accordion.box :title="__('features')">
            <div class="gap-6 grid md:grid-cols-2">
                <x-lareon::dynamic.single :title="__('features')" name="features" :value="old('features', [])"/>
                <x-lareon::dynamic.single :title="__('soon')" name="features_soon" :value="old('features_soon' , [])"/>
            </div>
        </x-lareon::accordion.box>

        <x-lareon::accordion.box :title="__('requirements')">
            <x-lareon::dynamic.single :title="__('requirements')" name="requirements" :value="old('requirements' ,[])"/>
        </x-lareon::accordion.box>

        <x-lareon::accordion.box :title="__('catalog')">
            <x-lareon::sections.text :value="old('catalog')" :title="__('catalog link')" name="catalog" :placeholder="__('write a :title' ,['title'=>__('link')])" :required="false" :open="false" />
        </x-lareon::accordion.box>

        <x-product::sections.properties :title="__('properties')" name="properties" :value="old('properties')"/>


        <x-seo::sections.instance-editor :value="old('seo')"/>
    @endsection
    @section('aside')
        <x-lareon::sections.image :value="old('featured_image')" :title="__('featured image')" name="featured_image" size="400*400"/>
        <x-lareon::sections.gallery :value="old('images' ,[])" :title="__('images')" name="images" />
        <x-product::sections.recommend-type :value="old('recommend_type')"/>

        <x-tag::sections.tag :value="old('tags')"/>
    @endsection

</x-lareon::admin-editor-layout>
