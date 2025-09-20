<?php

namespace Lareon\Modules\Product\App\Http\Controllers\Web\Admin\Products;

use Illuminate\Http\Request;
use Illuminate\Routing\Controllers\HasMiddleware;
use Illuminate\Routing\Controllers\Middleware;
use Lareon\Modules\Product\App\Http\Controllers\Controller;
use Lareon\Modules\Product\App\Http\Requests\Admin\NewProductRequest;
use Lareon\Modules\Product\App\Http\Requests\Admin\UpdateProductRequest;
use Lareon\Modules\Product\App\Logic\ProductLogic;
use Lareon\Modules\Product\App\Models\Product;
use Teksite\Lareon\Facade\WebResponse;

class ProductsController extends Controller  implements HasMiddleware
{
    public function __construct(public ProductLogic $logic)
    {
    }

    public static function middleware()
    {
        return [
            new Middleware('can:admin.product.read'),
            new Middleware('can:admin.product.create', only: ['create', 'store']),
            new Middleware('can:admin.product.edit', only: ['edit', 'update']),
            new Middleware('can:admin.product.delete', only: ['destroy']),
        ];
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $products = $this->logic->get()->result;
        $count = $this->logic->trashCount()->result ?? 0;
        return view('product::admin.pages.products.index', compact('products' ,'count'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('product::admin.pages.products.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(NewProductRequest $request)
    {
        $res = $this->logic->register($request->validated());
        return WebResponse::byResult($res ,route('admin.products.edit', $res->result))->go();
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        return redirect($product->path());
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        return view('product::admin.pages.products.edit', compact('product'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateProductRequest $request, Product $product)
    {
        $res = $this->logic->change($request->validated(), $product);
        return WebResponse::byResult($res, route('admin.products.edit', $product))->go();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        $res = $this->logic->delete($product);
        return WebResponse::byResult($res, route('admin.products.index'))->go();
    }
}
