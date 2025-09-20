<?php

namespace Lareon\Modules\Notifier\App\Http\Controllers\Web\Admin\Notifier;

use Illuminate\Routing\Controllers\HasMiddleware;
use Illuminate\Routing\Controllers\Middleware;
use Lareon\Modules\Notifier\App\Http\Requests\Admin\NewNotifierRequest;
use Lareon\Modules\Notifier\App\Http\Requests\Admin\UpdateNotifierRequest;
use Lareon\Modules\Notifier\App\Logic\NotifiersLogic;
use Lareon\Modules\Notifier\App\Models\NotifierItem;
use Lareon\Modules\Notifier\App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Teksite\Lareon\Facade\WebResponse;

class ItemsController extends Controller implements HasMiddleware
{
    public function __construct(public NotifiersLogic $logic)
    {
    }

    public static function middleware()
    {
        return [
            new Middleware('can:admin.notifier.read'),
            new Middleware('can:admin.notifier.create', only: ['create', 'store']),
            new Middleware('can:admin.notifier.edit', only: ['edit', 'update']),
            new Middleware('can:admin.notifier.delete', only: ['destroy']),
        ];
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $notifiers = $this->logic->get()->result;

        return view('notifier::admin.pages.notifiers.index', compact('notifiers'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('notifier::admin.pages.notifiers.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(NewNotifierRequest $request)
    {
        $res = $this->logic->register($request->validated());
        return WebResponse::byResult($res ,route('admin.notifiers.index'))->go();
    }

    /**
     * Display the specified resource.
     */
    public function show(NotifierItem $notifier)
    {
       // return redirect($notifier->path());
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(NotifierItem $notifier)
    {
      //  return view('notifier::admin.pages.notifiers.edit', compact('notifier'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateNotifierRequest $request, NotifierItem $notifier)
    {
      //  $res = $this->logic->change($request->validated(), $notifier);
      //  return WebResponse::byResult($res, route('admin.notifiers.edit', $notifier))->go();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(NotifierItem $notifier)
    {
        $res = $this->logic->delete($notifier);
        return WebResponse::byResult($res, route('admin.notifiers.index'))->go();
    }
}
