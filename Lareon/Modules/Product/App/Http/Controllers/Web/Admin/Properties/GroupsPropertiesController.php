<?php

namespace Lareon\Modules\Product\App\Http\Controllers\Web\Admin\Properties;

use Illuminate\Http\Request;
use Illuminate\Routing\Controllers\HasMiddleware;
use Illuminate\Routing\Controllers\Middleware;
use Lareon\Modules\Product\App\Http\Controllers\Controller;
use Lareon\Modules\Product\App\Http\Requests\Admin\NewGroupPropertyRequest;
use Lareon\Modules\Product\App\Http\Requests\Admin\UpdateGroupPropertyRequest;
use Lareon\Modules\Product\App\Logic\PropertyGroupLogic;
use Lareon\Modules\Product\App\Models\Group;

use Teksite\Lareon\Facade\WebResponse;

class GroupsPropertiesController extends Controller implements HasMiddleware
{

    public function __construct(public PropertyGroupLogic $logic)
    {
    }

    public static function middleware(): array
    {
        return [
            new Middleware('can:admin.product.property.read'),
            new Middleware('can:admin.product.property.create', only: ['create', 'store']),
            new Middleware('can:admin.product.property.edit', only: ['edit', 'update']),
            new Middleware('can:admin.product.property.delete', only: ['destroy']),
        ];
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $groups=$this->logic->get()->result;
        return view('product::admin.pages.properties.groups.index', compact('groups'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return redirect()->action([GroupsPropertiesController::class, 'index']);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(NewGroupPropertyRequest $request)
    {
        $res = $this->logic->register($request->validated());
        return WebResponse::byResult($res, route('admin.products.groups.index'))->go();
    }

    /**
     * Display the specified resource.
     */
    public function show(Group $group)
    {
        abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Group $group)
    {
        return view('product::admin.pages.properties.groups.edit', compact('group'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateGroupPropertyRequest $request, Group $group)
    {
        $res = $this->logic->change($request->validated() , $group);
        return WebResponse::byResult($res, route('admin.products.groups.edit', $group))->go();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Group $group)
    {
        $res = $this->logic->delete($group);
        return WebResponse::byResult($res, route('admin.products.groups.index'))->go();
    }
}
