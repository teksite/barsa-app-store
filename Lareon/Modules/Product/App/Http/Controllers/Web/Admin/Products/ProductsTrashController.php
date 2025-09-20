<?php

namespace Lareon\Modules\Product\App\Http\Controllers\Web\Admin\Products;

use Illuminate\Routing\Controllers\HasMiddleware;
use Illuminate\Routing\Controllers\Middleware;
use Lareon\Modules\Page\App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Lareon\Modules\Product\App\Logic\ProductLogic;
use Teksite\Lareon\Facade\WebResponse;

class ProductsTrashController extends Controller implements HasMiddleware
{
    public function __construct(public ProductLogic $logic)
    {

    }
    public static function middleware(): array
    {
        return [
            new Middleware('can:admin.product.trash'),
        ];
    }

    public function index()
    {
        $products =$this->logic->getTrashes()->result;
        return view('page::admin.pages.products.trash', compact('products'));
    }


    public function reinstate($id)
    {
        $result = $this->logic->restoreOne($id);
        return WebResponse::byResult($result, route('admin.products.trash.index'))->go();
    }


    public function prune($id)
    {
        $result = $this->logic->wipeOne($id);
        return WebResponse::byResult($result, route('admin.products.trash.index'))->go();
    }

    public function restore()
    {
        $result = $this->logic->restoreAll();
        return WebResponse::byResult($result, route('admin.products.index'))->go();
    }


    public function flush()
    {
        $result = $this->logic->wipeAll();
        return WebResponse::byResult($result, route('admin.products.index'))->go();
    }

}
