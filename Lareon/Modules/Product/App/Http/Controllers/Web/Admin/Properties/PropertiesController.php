<?php

namespace Lareon\Modules\Product\App\Http\Controllers\Web\Admin\Properties;

use Illuminate\Http\Request;
use Illuminate\Routing\Controllers\HasMiddleware;
use Illuminate\Routing\Controllers\Middleware;
use Lareon\Modules\Product\App\Http\Controllers\Controller;
use Lareon\Modules\Product\App\Http\Requests\Admin\NewPropertyRequest;
use Lareon\Modules\Product\App\Http\Requests\Admin\UpdatePropertyRequest;
use Lareon\Modules\Product\App\Logic\PropertyLogic;
use Lareon\Modules\Product\App\Models\Group;
use Lareon\Modules\Product\App\Models\Property;
use Teksite\Lareon\Facade\WebResponse;

class PropertiesController extends Controller implements HasMiddleware
{

    public function __construct(public PropertyLogic $logic)
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
    public function index(Group $group)
    {
        $properties=$this->logic->getByGroup($group)->result;
        return view('product::admin.pages.properties.index', compact('group' ,'properties'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Group $group)
    {
        return redirect()->action([PropertiesController::class, 'index']);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(NewPropertyRequest $request , Group $group)
    {
        $res = $this->logic->register($request->validated() , $group);
        return WebResponse::byResult($res, route('admin.products.groups.properties.index' , $group))->go();
    }

    /**
     * Display the specified resource.
     */
    public function show(Group $group , Property $property)
    {
        abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Group $group ,  Property $property)
    {
        return view('product::admin.pages.properties.edit', compact('group' ,'property'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdatePropertyRequest $request, Group $group ,  Property $property)
    {
        $res = $this->logic->change($request->validated() , $property , $group);
        return WebResponse::byResult($res, route('admin.products.groups.properties.edit', [$group, $property]))->go();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Group $group,  Property $property)
    {
        $res = $this->logic->delete($property);
        return WebResponse::byResult($res, route('admin.products.groups.properties.index' , $group))->go();
    }
}
