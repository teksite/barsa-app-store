<x-lareon::admin-list-layout>
    @section('title', __(':title list',['title'=>__('products')]))
    @section('description', __('products represent the items or software offered, allowing clients to explore and select what they need'))
    @section('header.start')
        <x-lareon::link.btn-outline :href="route('admin.products.create')" :title="__('create a new one')" color="create" can="admin.product.create"/>
        <x-lareon::link.trash :count="$count" :href="route('admin.products.trash.index')" :title="__('trash :title',['title'=>__('products')])" color="create" can="admin.product.create"/>
    @endsection
    @section('list')
        <x-lareon::box>
            <x-lareon::table :headers="['id'=>'#',__('image'),'title'=>__('title'),'active'=>__('active'),]">
                @if(count($products))
                    @foreach($products as $key=>$product)
                        <tr>
                            <td class="p-3">{{$products->firstItem() + $key}}</td>
                            <td class="p-3"><img src="{{$product->featured_image}}" alt="{{$product->title}}" width="90" height="60" loading="lazy" decoding="async" fetchpriority="low"></td>
                            <td>{{$product->title}}</td>
                            <td><span class="px-3 py-1 rounded-xl text-xs {{{$product->active ? 'bg-green-300 text-green-900' : 'bg-yellow-300 text-yellow-900'}}}}">{{$product->active ? __('active') : __('pending')}} </span></td>
                            <td>
                                <div class="action">
                                    <x-lareon::link.show :href="$product->path()"/>
                                    <x-lareon::link.sub :href="route('admin.products.versions.index' , $product)" can="admin.product.read"/>
                                    <x-lareon::link.edit :href="route('admin.products.edit' , $product)" can="admin.product.edit"/>
                                    <x-lareon::link.delete :href="route('admin.products.destroy' , $product)" can="admin.product.delete"/>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                @else
                    <tr>
                        <td colspan="6">
                            <p class="text-center">
                                {{__('no item has been found')}}.
                            </p>
                        </td>
                    </tr>
                @endif
            </x-lareon::table>
            {{$products->appends($_GET)->links()}}
        </x-lareon::box>
    @endsection

</x-lareon::admin-list-layout>
