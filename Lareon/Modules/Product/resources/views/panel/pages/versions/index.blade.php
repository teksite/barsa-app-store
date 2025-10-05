<x-lareon::panel-list-layout>
@section('title', __(':title list',['title'=>__('versions')]) . " ($product->title)")
    @section('description', __('versions represent the changelog of the product'))
    @section('header.start')
        <x-lareon::link.btn-outline :href="route('panel.products.versions.create', $product)"
                                    :title="__('create a new one')" color="create" can="panel.product.edit"/>
    @endsection
    @section('list')
        <x-lareon::box>
            <x-lareon::table
                    :headers="['id'=>'#','title'=>__('title'),'release'=>__('release type'),'published_at'=>__('published at'),]">
                @if(count($versions))
                    @foreach($versions as $key=>$version)
                        <tr>
                            <td class="p-3">{{$versions->firstItem() + $key}}</td>
                            <td>{{$version->title}}</td>
                            <td>
                                <span class="px-3 text-xs py-1 font-bold rounded-xl {{$version->release_type == \Lareon\Modules\Product\App\Enums\ReleaseTypeEnum::RELEASED  ? 'text-green-900 bg-green-300': 'text-yellow-900 bg-yellow-300'  }}">{{$version->release_type->getName()}}</span>
                            </td>
                            <td>
                                {{dateAdapter($version->published_at , 'Y-m-d')}}
                            </td>
                            <td>
                                <div class="action">
                                    <x-lareon::link.edit
                                            :href="route('panel.products.versions.edit' , [$product,$version])"
                                            can="panel.product.edit"/>
                                    <x-lareon::link.delete
                                            :href="route('panel.products.versions.destroy' , [$product,$version])"
                                            can="panel.product.edit"/>
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
            {{$versions->appends($_GET)->links()}}
        </x-lareon::box>
    @endsection

</x-lareon::panel-list-layout>
