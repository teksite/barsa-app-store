<?php

namespace Lareon\Modules\Blog\App\Http\Controllers\Web\Client\Posts;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\View;
use Lareon\Modules\Blog\App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Lareon\Modules\Blog\App\Models\Post;
use Lareon\Modules\Page\App\Models\Page;
use Lareon\Modules\Seo\App\Logic\SeoGeneratorLogic;

class PostsController extends Controller
{
    public function __construct(public SeoGeneratorLogic $seo)
    {
    }

    public function index()
    {
        $page=Page::where('label','blog index')->first() ?? null;
        $seo = $page ? $this->seo->generate($page)->result : null;
        $posts=Post::query()->with('categories',function ( $query){
          $query->select('title')->first();
        })->paginate(config('handler-settings.client-pagination' , 25));

        return view('pages.posts.index',compact('seo' ,'page' ,'posts'));
    }

    public function show(Post $post)
    {
        $seo =$this->seo->generate($post)->result;
        return View::first(['pages.posts.template.'.$post->template , 'pages.posts.show'] ,compact('post' , 'seo'));
    }
}
