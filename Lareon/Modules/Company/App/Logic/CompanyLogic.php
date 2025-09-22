<?php

namespace Lareon\Modules\Company\App\Logic;

use Illuminate\Support\Arr;
use Lareon\Modules\Company\App\Models\Company;
use Teksite\Extralaravel\Traits\TrashMethods;
use Teksite\Handler\Actions\ServiceWrapper;
use Teksite\Handler\Services\FetchDataService;

class CompanyLogic
{
    use TrashMethods;

    public function get(mixed $fetchData = [])
    {
        return app(ServiceWrapper::class)(function () use ($fetchData) {
            return app(FetchDataService::class)(Company::class, ['title' ,'national_id' ,'phone' ,'telephone'], ...$fetchData);
        });
    }

    public function register(array $inputs)
    {
        return app(ServiceWrapper::class)(function () use ($inputs) {
            return Company::query()->create($inputs);
        });
    }

    public function change(array $inputs, Company $company)
    {
        return app(ServiceWrapper::class)(function () use ($inputs, $company) {
            $company->update($inputs);
            return $company;
        });
    }

    public function delete(Company $company)
    {
        return app(ServiceWrapper::class)(function () use ($company) {
            $company->delete();

        });
    }

    protected function getModelClass(): string
    {
        return Company::class;
    }

}

