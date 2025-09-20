<nav>
    <ul class="space-y-6">
        <li>
            <div class="flex gap-3 items-center">
                <i class="tkicon stroke-zinc-300 fill-none" data-icon="mail"></i>
                <span class="h3 !mb-0">{{__('email')}}</span>
            </div>
            <a href="mailto:{{getStaticData('app.Data.theme.general.email' ,'')}}" class="light-link">
                {{getStaticData('app.Data.theme.general.email' ,'')}}
            </a>
        </li>
        <li>
            <div class="flex gap-3 items-center mb-6">
                <i class="tkicon stroke-zinc-300 fill-none"  data-icon="share"></i>
                <span class="h3 !mb-0">{{__('social network')}}</span>
            </div>
            <ul class="flex gap-6 items-center">
                @foreach(getStaticData('app.Data.theme.social' ,[]) as $item)
                    <li>
                        <a href="{{$item['url'] ?? '#'}}" rel="external" class="light-link"
                           title="{{$item['title'] ?? ''}} {{config('app.name')}}">
                            <i class="tkicon fill-none" data-icon="{{$item['icon'] ?? 'world'}}"></i>
                        </a>
                    </li>
                @endforeach

            </ul>
        </li>

    </ul>
</nav>
