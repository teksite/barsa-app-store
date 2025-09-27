<x-client-layout :seo="$seo">

    <x-slot name="editAddressPage">{{route('admin.pages.edit',$page)}}</x-slot>
    <main  class="about-page" role="main" aria-labelledby="about-heading">
       <div class="inner-container py-24">
           <h1>
               {{__('about :site',['site'=>__(config('app.name'))])}}
           </h1>
          {!! $page->body !!}
        </div>
    </main>
</x-client-layout>
