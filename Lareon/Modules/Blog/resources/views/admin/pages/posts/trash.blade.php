<x-lareon::admin-trash-layout :trash="route('admin.blog.posts.trash.index')" :index="route('admin.blog.posts.index')" title="{{__('posts')}}">
    @section('list')
        <x-lareon::box>
            <x-lareon::table :headers="['id'=>'#','title'=>__('title'),]">
                @if(count($posts))
                @foreach($posts as $key=>$post)
                    <tr>
                        <td class="p-3">{{$posts->firstItem() + $key}}</td>
                        <td>{{$post->title}}</td>
                        <td>
                            <div class="action">
                                <x-lareon::link.restore :href="route('admin.blog.posts.trash.reinstate' , $post->id)" can="admin.blog.post.trash"/>
                                <x-lareon::link.delete :href="route('admin.blog.posts.trash.prune' , $post->id)" can="admin.blog.post.trash"/>
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
            {{$posts->appends($_GET)->links()}}
        </x-lareon::box>
    @endsection

</x-lareon::admin-list-layout>
