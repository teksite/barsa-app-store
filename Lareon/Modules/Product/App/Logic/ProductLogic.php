<?php

namespace Lareon\Modules\Product\App\Logic;

use Illuminate\Support\Arr;
use Illuminate\Support\Str;
use Lareon\CMS\App\Models\User;
use Lareon\Modules\Product\App\Models\Product;
use Teksite\Extralaravel\Traits\TrashMethods;
use Teksite\Handler\Actions\ServiceWrapper;
use Teksite\Handler\Services\FetchDataService;

class ProductLogic
{
    use TrashMethods;

    public function get(mixed $fetchData = [])
    {
        return app(ServiceWrapper::class)(function () use ($fetchData) {
            return app(FetchDataService::class)(Product::class, ['title'], ...$fetchData);
        });
    }
    public function getByUser(User|null $user=null , mixed $fetchData = [])
    {
        return app(ServiceWrapper::class)(function () use ($fetchData ,$user) {
            $user ??= auth()->user();
            return app(FetchDataService::class)($user->products(), ['title'], ...$fetchData);
        });
    }

    public function getByCompany(User|null $user=null , mixed $fetchData = [])
    {
        return app(ServiceWrapper::class)(function () use ($fetchData ,$user) {
            $user ??= auth()->user();
            $company= $user->company;
            return app(FetchDataService::class)($company->products(), ['title'], ...$fetchData);
        });
    }


    public function register(array $input)
    {
        return app(ServiceWrapper::class)(function () use ($input) {

            $input['user_id'] ??= auth()->id();
            $input['company_id'] ??= auth()->user()->company->id;
            $product=Product::query()->create(Arr::except($input, ['seo' ,'tag']));
            $product->properties()->attach($input['properties'] ?? []);
            $product->assignTags($inputs['tags'] ?? null);
            $product->saveSeo($inputs['seo'] ?? []);
            return $product;
        } ,withHandler: false);
    }

    public function change(array $input, Product $product)
    {
        return app(ServiceWrapper::class)(function () use ($input, $product) {

            $input['publish']=isset($input['publish']) ? 1 : 0;
            $product->update($input);
            $product->properties()->sync($input['properties'] ?? []);
            $product->assignTags($inputs['tags'] ?? null);
            $product->saveSeo($inputs['seo'] ?? []);
            return $product;
        });
    }

    public function delete(Product $product)
    {
        return app(ServiceWrapper::class)(function () use ($product) {
            $product->deactiveSeo();
            $product->delete();
        });
    }

    protected function getModelClass(): string
    {
        return Product::class;
    }
}


