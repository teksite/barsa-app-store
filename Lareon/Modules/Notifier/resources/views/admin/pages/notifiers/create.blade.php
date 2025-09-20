<x-lareon::admin-editor-layout>
    @section('title', __('new :title',['title'=>__('notification')]))
    @section('description', __('in this window you can create a new :title',['title'=>__('notification')]))
    @section('formRoute', route('admin.notifiers.store'))
    @section('header.start')
        <x-lareon::link.btn-outline :href="route('admin.notifiers.index')" :title="__('all :title',['title'=>__('notifications')])" color="index"/>
    @endsection
    @section('form')
        <x-lareon::sections.title :value="old('title')" name="title" :placeholder="__('enter a unique :title',['title'=>__('title')])" :required="false"/>
        <x-lareon::sections.editor :title="__('message')" name="message" :placeholder="__('write a :title' ,['title'=>__('message')])" :required="false" rows="6" :open="true">{{old('message')}}</x-lareon::sections.editor>

    @endsection
    @section('aside')
        <x-lareon::box>
            <x-lareon::input.label :title="__('types')" />
            @foreach(config('lareon.notifier.type',[]) as $type)
                <div class="flex items-center gap-3 ">
                    <x-lareon::input.checkbox id="type_{{$loop->iteration}}" name="types[{{$type}}]" value="{{$type}}"  />
                    <x-lareon::input.label for="type_{{$loop->iteration}}" :title="__($type)" />
                </div>
            @endforeach
        </x-lareon::box>
            <x-lareon::sections.select-ajax :accordion="false" name="users[]" :title="__('users')" :multiple="true"  dataLabel="name" dataValue="id" dataSearch="name" :url="route('admin.ajax.users.get')" :model="\Lareon\CMS\App\Models\User::class"/>
            <x-lareon::sections.select-ajax :accordion="false" name="roles[]" :title="__('roles')" :multiple="true"  dataLabel="title" dataValue="id" dataSearch="title" :url="route('admin.ajax.roles.get')" :model="\Teksite\Authorize\Models\Role::class"/>
    @endsection

</x-lareon::admin-editor-layout>
