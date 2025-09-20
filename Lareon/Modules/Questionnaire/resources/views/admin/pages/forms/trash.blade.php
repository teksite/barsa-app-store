<x-lareon::admin-trash-layout :trash="route('admin.questionnaire.forms.trash.index')" :index="route('admin.questionnaire.forms.index')" title="{{__('forms')}}">
    @section('list')
        <x-lareon::box>
            <x-lareon::table :headers="['id'=>'#','title'=>__('title'),]">
                @if(count($pages))
                @foreach($pages as $key=>$page)
                    <tr>
                        <td class="p-3">{{$pages->firstItem() + $key}}</td>
                        <td>{{$page->title}}</td>
                        <td>
                            <div class="action">
                                <x-lareon::link.restore :href="route('admin.questionnaire.forms.trash.reinstate' , $page->id)" can="admin.questionnaire.forms.trash"/>
                                <x-lareon::link.delete :href="route('admin.questionnaire.forms.trash.prune' , $page->id)" can="admin.questionnaire.forms.trash"/>
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
            {{$pages->appends($_GET)->links()}}
        </x-lareon::box>
    @endsection

</x-lareon::admin-list-layout>
