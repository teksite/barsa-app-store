@props(['comment', 'parentId'=>null])
@php($rand='comment_itr'.rand(1000,9999))

<div id="{{$rand}}" class="p-3 border border-zinc-600 rounded-lg">
    <div class="flex items-start justify-between gap-6">
        <figure class="flex items-center gap-3">
            <img src="{{url('storage/admin/avatar-default.jpg')}}" alt="{{$comment->name}}"
                 width="45" height="45" class="rounded-full border border-zinc-600 comment_avatar">
            <figcaption
                class="comment_author font-bold text">
                {{$comment->name ?? ($comment->user ?  ($comment->user->nickname ?? $comment->user->name) : '-') }}
            </figcaption>
        </figure>
        <div>
            <span class="text-xs font-semibold text" dir="ltr">{{dateAdapter($comment->created_at)}}</span>
        </div>
    </div>
    <div class="md:ms-16">
        <p class="comment_message text">
            {{$comment->message}}
        </p>
    </div>
    <div class="flex justify-end">
        <x-button.outline color="second" class="flex items-center gap-1 reply_comment_btn text-sm"
                          data-comment="{{$parentId}}" data-iteration="{{$rand}}"
                          x-data="" x-on:click.prevent="$dispatch('open-modal', 'reply-comment')">
            <i class='tkicon stroke-second_color fill-second_color ' data-icon='reply' stroke-width="1.5" size='14'></i>
            {{__('reply')}}
        </x-button.outline>
    </div>
</div>
