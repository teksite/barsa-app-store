<x-lareon::admin-entry-layout>
    @section('title', __(':title list',['title'=>__('property groups')]))
    @section('formRoute', route('admin.products.groups.store'))
    @section('description', __('property groups organize related attributes to help structure products and aid clients in finding relevant features'))
    @can('admin.product.property.create')
        @section('form')
            <x-lareon::sections.text :title="__('title')" name="title" :placeholder="__('enter a unique :title' ,['title'=>__('title')])" :required="true"/>
        @endsection
    @endcan
    @section('list')
        <x-lareon::box>
            <x-lareon::table :headers="['id'=>'#','title'=>__('title') ,]">
                @foreach($groups as $key=>$group)
                    <tr>
                        <td class="p-3">{{$groups->firstItem() + $key}}</td>
                        <td>{{$group->title}}</td>
                        <td>
                            <div class="action">
                                <x-lareon::link.sub :href="route('admin.products.groups.properties.index' , $group)" can="admin.product.property.read"/>
                                <x-lareon::link.edit :href="route('admin.products.groups.edit' , $group)" can="admin.product.property.edit"/>
                                <x-lareon::link.delete :href="route('admin.products.groups.destroy' , $group)" can="admin.product.property.delete"/>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </x-lareon::table>
            {{$groups->appends($_GET)->links()}}

        </x-lareon::box>
    @endsection

</x-lareon::admin-entry-layout>
