<x-lareon::panel-layout type="update"  :instance="$user">
    @section('title', __('edit the :title',['title'=>__('profile')]))
    @section('description', __('in this window you can edit your profile data'))
    @section('header.end')
        <x-lareon::panel.profile-menu />
    @endsection
    <form action="{{route('panel.profile.update')}}" method="POST">
        @csrf
        @method('PATCH')
       <x-lareon::box class="grid md:grid-cols-2 xl:grid-cols-3 gap-6 mb-6">
           <div class="border border-zinc-300 rounded p-3">
               <x-lareon::sections.text :value="old('name') ?? $user->name" :title="__('name')" name="name" :placeholder="__('write a :title for :item',['title'=>__('name') , 'item'=>__('user')])" :required="true"/>
               <x-lareon::sections.text :value="old('nick_name') ?? $user->nick_name ?? $user->name" :title="__('nickname')" name="nick_name" :placeholder="__('write a :title',['title'=>__('nickname')])" :required="false"/>
               <x-lareon::sections.text :value="old('phone') ?? $user->phone" :title="__('phone')" name="phone" :placeholder="__('write a :title',['title'=>__('phone')])" :required="true" type="phone" readonly disabled/>
               <x-lareon::sections.text :value="old('email') ?? $user->email" :title="__('email')" name="email" :placeholder="__('write a :title',['title'=>__('email')])" :required="true" type="email" readonly disabled/>
               <x-lareon::sections.text :value="old('telegram_id') ?? $user->telegram_id" :title="__('telegram_id')" name="telegram_id" :placeholder="__('write a :title',['title'=>__('telegram id')])"/>
           </div>
           <div class="border border-zinc-300 rounded p-3">
               <x-lareon::sections.image value="{{old('featured_image') ?? $user->featured_image}}" :title="__('avatar')" name="featured_image" />
           </div>
           <div class="border border-zinc-300 rounded p-3">
               <p class="my-3 text-sm font-bold">
                   {{__('registration date')}}: <span class="">{{dateAdapter($user->reated_at) ?? '-'}} {{$user->reated_at ? "(".\Carbon\Carbon::parse($user->reated_at)->ago() .')' : ''}}</span>
               </p>
               <div>
                   <span>{{__('roles')}}:</span>  <span class="font-bold">{{$user->roles->pluck('title')->implode(', ')}}</span>
               </div>
               <hr class="border-zinc-300 my-6">
               <x-skill::sections.skills :value="old('skills', $user->skills()->pluck('id')->toArray())" :accordion="false"/>
           </div>
       </x-lareon::box>

        <x-lareon::box>
            <h2 class="mb-3">
                {{__('information')}}
            </h2>
            <div class="flex items-center my-6 gap-3">
                <span class="relative flex size-3">
                    <span class="absolute inline-flex h-full w-full animate-ping rounded-full bg-red-950 opacity-75"></span>
                    <span class="relative inline-flex size-3 rounded-full bg-red-600"></span>
                </span>
                <p class="text-sm text-red-600 font-semibold">
                    {{__('By unmarking an item, it will no longer be displayed on your profile page')}}
                </p>
            </div>
            <div class="grid xl:grid-cols-2 gap-6">
                <x-lareon::sections.segment.user-general :data="$meta['general']"/>
                <x-lareon::sections.segment.user-social :data="$meta['social']"/>
                <x-lareon::sections.segment.user-images :data="$meta['images']"/>

            </div>
        </x-lareon::box>
        <div class="mt-6 bg-slate-100 p-6">
            <x-lareon::button.solid type="submit">
                {{__('update')}}
            </x-lareon::button.solid>
        </div>

    </form>

</x-lareon::panel-layout>
