<?php

namespace Lareon\Modules\Product\App\Http\Controllers\Web\Admin\Versions;

use Illuminate\Http\Request;
use Illuminate\Routing\Controllers\HasMiddleware;
use Illuminate\Routing\Controllers\Middleware;
use Lareon\Modules\Product\App\Http\Controllers\Controller;
use Lareon\Modules\Product\App\Http\Controllers\Web\Admin\Properties\PropertiesController;
use Lareon\Modules\Product\App\Http\Requests\Admin\NewProductVersionRequest;
use Lareon\Modules\Product\App\Http\Requests\Admin\UpdateProductVersionRequest;
use Lareon\Modules\Product\App\Logic\VersionLogic;
use Lareon\Modules\Product\App\Models\Product;
use Lareon\Modules\Product\App\Models\Version;
use Teksite\Lareon\Facade\WebResponse;

class ProductVersionsController extends Controller implements HasMiddleware
{

    public function __construct(public VersionLogic $logic)
    {
    }

    public static function middleware(): array
    {
        return [
            new Middleware(['can:admin.product.read']),
            new Middleware('can:admin.product.edit', except: ['index']),
        ];
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Product $product)
    {
        $versions=$this->logic->getByProduct($product)->result;
        return view('product::admin.pages.versions.index', compact('product' ,'versions'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Product $product)
    {
        return view('product::admin.pages.versions.create', compact('product'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(NewProductVersionRequest $request , Product $product)
    {
        $version = $this->logic->register($request->validated() , $product)->result;
        return WebResponse::byResult($res, route('admin.products.versions.edit' , [$product,$version]))->go();
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product , Version $version)
    {
        abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product ,  Version $version)
    {
        return view('product::admin.pages.versions.edit', compact('product' ,'version'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateProductVersionRequest $request, Product $product ,  Version $version)
    {
        $res = $this->logic->change($request->validated() , $version , $product);
        return WebResponse::byResult($res, route('admin.products.versions.edit', [$product, $version]))->go();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product,  Version $version)
    {
        $res = $this->logic->delete($version);
        return WebResponse::byResult($res, route('admin.products.versions.index' , $product))->go();
    }
}
