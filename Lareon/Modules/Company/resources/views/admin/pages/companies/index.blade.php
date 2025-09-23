<x-lareon::admin-list-layout>
    @section('title', __(':title list',['title'=>__('companies')]))
    @section('description', __('companies define the grouping of users and indicate under which company each user operate'))
    @section('header.start')
        <x-lareon::link.btn-outline :href="route('admin.companies.create')" :title="__('create a new one')" color="create" can="admin.company.create"/>
    @endsection
    @section('list')
        <x-lareon::box>
            <x-lareon::table :headers="['id'=>'#',__('logo'),'title'=>__('title'),'national_id'=>__('national id'),'phone'=>__('phone'),'telephone'=>__('telephone'),]">
                @if(count($companies))
                    @foreach($companies as $key=>$company)
                        <tr>
                            <td class="p-3">{{$companies->firstItem() + $key}}</td>
                            <td class="p-3"><img src="{{$company->featured_image}}" alt="{{$company->title}}" width="60" height="60" loading="lazy" decoding="async" fetchpriority="low"></td>
                            <td>{{$company->national_id }}</td>
                            <td>{{$company->phone }}</td>
                            <td>{{$company->telephone }}</td>
                            <td>
                                <div class="action">
                                    <x-lareon::link.show :href="$company->path()"/>
                                    <x-lareon::link.edit :href="route('admin.companies.edit' , $company)" can="admin.company.edit"/>
                                    <x-lareon::link.delete :href="route('admin.companies.destroy' , $company)" can="admin.company.delete"/>
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
            {{$companies->appends($_GET)->links()}}
        </x-lareon::box>
    @endsection

</x-lareon::admin-list-layout>
