<x-lareon::admin-entry-layout>
    @section('title', __(':title list',['title'=>__('property') . "($group->title)"]))
    @section('formRoute', route('admin.products.groups.properties.store' , $group))
    @section('description', __('properties define specific characteristics of a product, helping clients understand and compare items'))
    @section('hero-start')
        <x-lareon::link.btn-outline :href="route('admin.products.groups.index')" :title="__('all :title',['title'=>__('groups')])" color="index"/>
    @endsection
    @can('admin.product.property.create')
        @section('form')
            <x-lareon::sections.text :title="__('title')" name="title" :placeholder="__('enter a unique :title' ,['title'=>__('title')])" :required="true"/>
        @endsection
    @endcan
    @section('list')
        <x-lareon::box>
            <x-lareon::table :headers="['id'=>'#','title'=>__('title') ,]">
                @foreach($properties as $key=>$property)
                    <tr>
                        <td class="p-3">{{$properties->firstItem() + $key}}</td>
                        <td>{{$property->title}}</td>
                        <td>
                            <div class="action">
                                <x-lareon::link.edit :href="route('admin.products.groups.properties.edit' , [$group , $property])" can="admin.product.property.edit"/>
                                <x-lareon::link.delete :href="route('admin.products.groups.properties.destroy' ,  [$group , $property])" can="admin.product.property.delete"/>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </x-lareon::table>
            {{$properties->appends($_GET)->links()}}

        </x-lareon::box>
    @endsection

</x-lareon::admin-entry-layout>
