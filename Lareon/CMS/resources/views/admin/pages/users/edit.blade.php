<x-lareon::admin-editor-layout type="update" :instance="$user">
    @section('title', __('edit the :title',['title'=>__('user'). " ($user->name)"]))
    @section('description', __('in this window you can edit the :title' ,['title'=>__('user') . " ($user->name)"]))

    @section('formRoute', route('admin.users.update', $user))
    @section('header.start')
        <x-lareon::link.btn-outline :href="route('admin.users.index')" :title="__('all :title',['title'=>__('users')])"
                                    color="index"/>
        <x-lareon::link.btn-outline :href="route('admin.users.create')" :title="__('new :title',['title'=>__('user')])"
                                    color="create" can="admin.user.create"/>
        @if(\Illuminate\Support\Facades\Route::has('users.show'))
            <x-lareon::link.btn-outline :href="$user->path()" :title="__('profile')" color="yellow"
                                        can="admin.user.read"/>
        @endif
    @endsection
    @section('header.end')
        @parent
        <x-lareon::link.delete :href="route('admin.users.destroy', $user)" can="admin.user.delete"/>
    @endsection
    @section('form')
        <x-lareon::box class="grid xl:grid-cols-2 gap-6 mb-6">
            <div>
                <x-lareon::sections.text :value="old('name') ?? $user->name" :title="__('name')" name="name"
                                         :placeholder="__('write a :title for :item',['title'=>__('name') , 'item'=>__('user')])"
                                         :required="true"/>
                <x-lareon::sections.text :value="old('nick_name') ?? $user->nick_name ?? $user->name"
                                         :title="__('nickname')" name="nick_name"
                                         :placeholder="__('write a :title',['title'=>__('nickname')])"
                                         :required="false"/>
                <x-lareon::sections.text :value="old('phone') ?? $user->phone" :title="__('phone')" name="phone"
                                         :placeholder="__('write a :title',['title'=>__('phone')])" :required="true"
                                         type="phone" readonly disabled/>
                <x-lareon::sections.text :value="old('email') ?? $user->email" :title="__('email')" name="email"
                                         :placeholder="__('write a :title',['title'=>__('email')])" :required="true"
                                         type="email" readonly disabled/>
                @if($user->email_verified_at)
                    <x-lareon::sections.text :value="dateAdapter($user->email_verified_at)" name="email_verification"
                                             :title="__('email verified at')" readonly disabled/>
                @else
                    <x-lareon::sections.checkbox value="1" :title="__('verifying email')" name="email_verified"/>
                @endif
                @if($user->phone_verified_at)
                    <x-lareon::sections.text :value="dateAdapter($user->phone_verified_at)" name="phone_verification"
                                             :title="__('phone verified at')" readonly disabled/>
                @else
                    <x-lareon::sections.checkbox value="1" :title="__('verifying phone')" name="phone_verified"/>
                @endif
                <x-lareon::sections.text :value="old('telegram_id') ?? $user->telegram_id" :title="__('telegram_id')"
                                         name="telegram_id"
                                         :placeholder="__('write a :title',['title'=>__('telegram id')])"/>
                <x-lareon::sections.password value="" :title="__('new :title' ,['title'=>__('password')])"
                                             name="password" :placeholder="__('leave it empty to not change')"/>
            </div>
            <x-lareon::sections.image :value="old('featured_image') ?? $user->featured_image" type="avatar" size="400*400" :title="__('avatar')" name="featured_image"/>
        </x-lareon::box>
    @endsection
    @section('form.before.end')
        <x-lareon::sections.segment.user-general :data="$meta['general']"/>
        <x-lareon::sections.segment.user-social :data="$meta['social']"/>
        <x-lareon::sections.segment.user-images :data="$meta['images']"/>
        <x-seo::sections.instance-editor :instance="$user" :value="old('seo') ?? $user->getSeo()"/>

    @endsection
    @section('aside')
        <x-lareon::box class="text-xs">
            <div>
                <span>{{__('roles')}}:</span> <span
                    class="font-bold">{{$user->roles->pluck('title')->implode(', ')}}</span>
            </div>
        </x-lareon::box>
        @if(auth()->id() != $user->id)
            <x-lareon::sections.roles :instance="$user"/>
            <x-lareon::sections.permissions :instance="$user"/>
        @endif
        <x-skill::sections.skills :value="old('skills', $user->skills()->pluck('id')->toArray())"/>

    @endsection
</x-lareon::admin-editor-layout>
