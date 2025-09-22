<?php

namespace Lareon\Modules\Company\App\Http\Controllers\Web\Admin\Companies;

use Illuminate\Http\Request;
use Illuminate\Routing\Controllers\HasMiddleware;
use Illuminate\Routing\Controllers\Middleware;
use Lareon\Modules\Company\App\Http\Controllers\Controller;
use Lareon\Modules\Company\App\Http\Requests\Admin\NewCompanyRequest;
use Lareon\Modules\Company\App\Http\Requests\Admin\UpdateCompanyRequest;
use Lareon\Modules\Company\App\Logic\CompanyLogic;
use Lareon\Modules\Company\App\Models\Company;
use Teksite\Lareon\Facade\WebResponse;

class CompaniesController extends Controller implements HasMiddleware
{
    public function __construct(public CompanyLogic $logic)
    {
    }

    public static function middleware()
    {
        return [
            new Middleware('can:admin.company.read'),
            new Middleware('can:admin.company.create', only: ['create', 'store']),
            new Middleware('can:admin.company.edit', only: ['edit', 'update']),
            new Middleware('can:admin.company.delete', only: ['destroy']),
        ];
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $companies = $this->logic->get()->result;

        return view('company::admin.pages.companies.index', compact('companies'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('company::admin.pages.companies.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(NewCompanyRequest $request)
    {
        $res = $this->logic->register($request->validated());
        return WebResponse::byResult($res ,route('admin.companies.edit', $res->result))->go();
    }

    /**
     * Display the specified resource.
     */
    public function show(Company $company)
    {
        return redirect($company->path());
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Company $company)
    {
        return view('company::admin.pages.companies.edit', compact('company'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCompanyRequest $request, Company $company)
    {
        $res = $this->logic->change($request->validated(), $company);
        return WebResponse::byResult($res, route('admin.companies.edit', $company))->go();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Company $company)
    {
        $res = $this->logic->delete($company);
        return WebResponse::byResult($res, route('admin.companies.index'))->go();
    }
}
