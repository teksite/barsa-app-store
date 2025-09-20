<x-lareon::admin-list-layout>
    @section('title', __(':title list',['title'=>__('notifications')]))
    @section('description', __('notifications are messages or alerts that inform users about important updates, actions, or events'))
    @section('header.start')
        <x-lareon::link.btn-outline :href="route('admin.notifiers.create')" :title="__('create a new one')" color="create" can="admin.notifier.create"/>
    @endsection
    @section('list')
        <x-lareon::box>
            <x-lareon::table :headers="['id'=>'#',__('image'),'title'=>__('title'),'publish_status'=>__('publish status'),'published_at'=>__('published at'),]">
                @if(count($notifiers))
                @foreach($notifiers as $key=>$notifier)
                    <tr>
                        <td class="p-3">{{$notifiers->firstItem() + $key}}</td>
                        <td>{{$notifier->title}}</td>
                        <td>{{$notifier->publish_status}}</td>
                        <td>{{$notifier->published_at ?? $notifier->created_at}}</td>
                        <td>
                            <div class="action">
                                <x-lareon::link.delete :href="route('admin.notifiers.destroy' , $notifier)" can="admin.notifier.delete"/>
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
            {{$notifiers->appends($_GET)->links()}}
        </x-lareon::box>
    @endsection

</x-lareon::admin-list-layout>
