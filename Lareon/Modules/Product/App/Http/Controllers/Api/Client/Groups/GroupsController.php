<?php

namespace Lareon\Modules\Product\App\Http\Controllers\Api\Client\Groups;

use Illuminate\Http\Request;
use Lareon\Modules\Product\App\Http\Controllers\Controller;
use Lareon\Modules\Product\App\Http\Resources\GroupCollection;
use Lareon\Modules\Product\App\Http\Resources\ProductCollection;
use Lareon\Modules\Product\App\Models\Group;
use Lareon\Modules\Product\App\Models\Product;

class GroupsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $products = Group::query()->with('properties')->get();
        return new GroupCollection($products);
    }
}
