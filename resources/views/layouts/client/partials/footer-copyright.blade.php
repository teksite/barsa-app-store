<div class="" id="site-copyright">
    <p class="text-center text-sm mb-0 text-main_color font-bold">
        {!!  __('all rights of this site is reserved by :name',['name'=>__(config('app.name'))])!!}
        (<span>{{dateAdapter(\Carbon\Carbon::parse('2014-01-01') ,'Y')}}</span> - <span>{{dateAdapter(\Carbon\Carbon::now() ,'Y')}}</span>)
    </p>
</div>
