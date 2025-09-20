<x-lareon::panel-layout>
    @section('title', __(':title list',['title'=>__('comments')]))
    @section('description', __('here, you can see a list of your comments and edit them if possible'))
    @section('header.start')

    @endsection
    @if(count($comments))
        <ul class="space-y-6">
            @foreach($comments as $key=>$comment)
            <li class="x-box relative group">
                <span class="absolute top-0 start-0 p-0.5 text-xs text-zinc-50 rounded-bl-lg {{ $comment->confirmed ? 'bg-green-600' : 'bg-yellow-600' }}">{{ $comment->confirmed ? __('confirmed') : 'pending' }}</span>
                <div class="flex items-center gap-3 justify-start">
                    <span class="bg-zinc-600 text-zinc-50 w-6 h-6 aspect-square rounded-full flex items-center justify-center">
                        {{$comments->firstItem() + $key}}
                     </span>
                   <div>
                       {{$comment->message}}
                   </div>
                </div>
                <hr class="border-zinc-300 my-3">
                <div class="grid gap-3 md:grid-cols-2">
                   <div>
                       <div class="text-sm mb-3">{{__('created at')}} : <span dir="ltr">{{dateAdapter($comment->created_at)}}</span></div>
                       <div class="flex gap-3 items-center text-xs" >
                           <x-lareon::link.show :href="$comment->path()"/>
                           {{$comment->title}}
                       </div>
                   </div>
{{--                    <div class="flex flex-col gap-3 items-end invisible group-hover:visible">--}}
{{--                        @if(\Carbon\Carbon::parse($comment->created_at)->addMinutes(config('lareon.comment.edit' , '120')) > now())--}}
{{--                        <x-lareon::link.edit :href="route('admin.comments.edit' , $comment)" can="admin.comment.edit"/>--}}
{{--                        @endif--}}
{{--                        @if(\Carbon\Carbon::parse($comment->created_at)->addMinutes(config('lareon.comment.delete' , '120')) > now())--}}
{{--                                <x-lareon::link.delete :href="route('admin.comments.destroy' , $comment)" can="admin.comment.delete"/>--}}
{{--                        @endif--}}
{{--                    </div>--}}
                </div>
            </li>
            @endforeach
        </ul>
        {{$comments->appends($_GET)->links()}}

    @endif


</x-lareon::panel-layout>
