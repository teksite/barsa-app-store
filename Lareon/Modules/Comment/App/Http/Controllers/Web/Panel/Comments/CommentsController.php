<?php

namespace Lareon\Modules\Comment\App\Http\Controllers\Web\Panel\Comments;

use Illuminate\Http\Request;
use Illuminate\Routing\Controllers\HasMiddleware;
use Illuminate\Routing\Controllers\Middleware;
use Lareon\Modules\Comment\App\Http\Controllers\Controller;
use Lareon\Modules\Comment\App\Logic\CommentsLogic;

class CommentsController extends Controller implements HasMiddleware
{
    public function __construct(public CommentsLogic $logic)
    {
    }

    public static function middleware(): array
    {
        return [
            new Middleware('can:panel.comment.read'),
            new Middleware('can:panel.comment.edit', only: ['edit', 'update']),
            new Middleware('can:panel.comment.delete', only: ['destroy']),
        ];
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $comments = $this->logic->getByUser()->result;
        return view('comment::panel.pages.comments.index', compact('comments' ));
    }

}
