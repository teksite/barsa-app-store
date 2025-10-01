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
           </div>
           <div class="border border-zinc-300 rounded p-3">
               <img id="single-input-lgqp2334-prev" src="http://app-store.test/storage/admin/avatar-default.jpg" alt="image" loading="lazy" fetchpriority="low" decoding="async" width="600" height="400" data-placheolder="/storage/admin/image-placeholder.jpg" class="w-full max-w-full" data-id="single-input-lgqp2334">
           </div>
           <div class="border border-zinc-300 rounded p-3">
               <p class="my-3 text-sm font-bold">
                   {{__('registration date')}}: <span class="">{{dateAdapter($user->reated_at) ?? '-'}} {{$user->reated_at ? "(".\Carbon\Carbon::parse($user->reated_at)->ago() .')' : ''}}</span>
               </p>
               <div>
                   <span>{{__('roles')}}:</span>  <span class="font-bold">{{$user->roles->pluck('title')->implode(', ')}}</span>
               </div>
           </div>
       </x-lareon::box>

        <div class="mt-6 bg-slate-100 p-6">
            <x-lareon::button.solid type="submit">
                {{__('update')}}
            </x-lareon::button.solid>
        </div>

    </form>

</x-lareon::panel-layout>
