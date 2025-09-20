<div class="ps-3 pe-3 pt-3 pb-3" id="site-copyright">
    <p class="text-center text-sm mb-0">
        {!!  __('all rights of this site is reserved by :name',['name'=>"<span class='text-main_color font-bold'>".__(config('app.name'))."</span>"])!!}
        (<span>{{dateAdapter(\Carbon\Carbon::parse('2014-01-01') ,'Y')}}</span> - <span>{{dateAdapter(\Carbon\Carbon::now() ,'Y')}}</span>)
    </p>
</div>
