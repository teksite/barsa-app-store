<x-lareon::admin-editor-layout type="update"  :instance="$product">
    @section('title', __('edit the :title',['title'=>__('product') . " ($product->title)"]))
    @section('description', __('in this window you can edit the :title' ,['title'=>__('product') . " ($product->title)"]))

    @section('formRoute', route('admin.products.update', $product))
    @section('header.start')
        <x-lareon::link.btn-outline :href="route('admin.products.index')" :title="__('all :title',['title'=>__('products')])" color="index"/>
        <x-lareon::link.btn-outline :href="route('admin.products.create')" :title="__('new :title',['title'=>__('products')])" color="create" can="admin.product.create"/>
        <x-lareon::link.btn-outline :href="route('admin.products.versions.index' , $product)" :title="__('all :title',['title'=>__('versions')])" color="index" can="admin.product.read"/>
    @endsection
    @section('header.end')
        @parent
            <x-lareon::link.delete :href="route('admin.products.destroy', $product)" can="admin.product.delete"/>
    @endsection
    @section('form')
        <x-lareon::sections.title :value="old('title',$product->title)" name="title" :placeholder="__('enter a unique :title',['title'=>__('title')])" :required="true"/>
        <x-lareon::sections.slug :link="$product->path()" :value="old('slug' ,$product->slug)" name="slug" :placeholder="__('enter a unique :title',['title'=>__('slug')])" :required="true"/>

        <x-lareon::sections.textarea :title="__('excerpt')" name="excerpt" :placeholder="__('write a :title' ,['title'=>__('excerpt')])" :required="false" :open="false">{{old('excerpt') ?? $product->excerpt}}</x-lareon::sections.textarea>
        <x-lareon::sections.editor :title="__('body')" name="body" :placeholder="__('write a :title' ,['title'=>__('body')])" :required="false" rows="30" :open="true">{{old('body') ?? $product->body}}</x-lareon::sections.editor>

        <x-lareon::accordion.box :title="__('features')">
            <div class="gap-6 grid md:grid-cols-2">
            <x-lareon::dynamic.single :title="__('features')" name="features" :value="old('features', $product->features)"/>
            <x-lareon::dynamic.single :title="__('soon')" name="features_soon" :value="old('features_soon' , $product->features_soon)"/>
            </div>
        </x-lareon::accordion.box>

        <x-lareon::accordion.box :title="__('requirements')">
            <x-lareon::dynamic.single :title="__('requirements')" name="requirements" :value="old('requirements' , $product->requirements)"/>
        </x-lareon::accordion.box>

        <x-lareon::accordion.box :title="__('catalog')">
            <x-lareon::sections.text :value="old('catalog') ?? $product->catalog" :title="__('catalog link')" name="catalog" :placeholder="__('write a :title' ,['title'=>__('link')])" :required="false" :open="false" />
        </x-lareon::accordion.box>

        <x-product::sections.properties :title="__('properties')" name="properties" :value="old('properties' , $product->properties?->pluck('id')->toArray())"/>

        <x-seo::sections.instance-editor :instance="$product" :value="old('seo',$product->getSeo())"/>


    @endsection
    @section('aside')
        <x-lareon::sections.image :value="old('featured_image' ,$product->featured_image)" :title="__('featured image')" name="featured_image" size="400*400"/>
{{--        <x-lareon::sections.gallery :value="old('images' ,$product->images) ?? []" :title="__('images')" name="images" />--}}
       <div class="p-6 rounded-xl border border-zinc-300">
           <x-lareon::sections.checkbox value="1" :title="__('publish')" name="publish" :checked="!!$product->publish" />
       </div>

        <x-tag::sections.tag :value=" old('tags' ,$product->tags->pluck('title')->toArray())"/>
    @endsection
</x-lareon::admin-editor-layout>
