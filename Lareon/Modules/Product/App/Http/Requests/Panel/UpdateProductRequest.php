<?php
namespace Lareon\Modules\Product\App\Http\Requests\Panel;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Collection;
use Illuminate\Validation\Rule;
use Lareon\Modules\Product\App\Models\Product;
use Lareon\Modules\Product\App\Models\Property;
use Lareon\Modules\Seo\App\Models\SeoModel;
use Lareon\Modules\Tag\App\Models\Tag;

class UpdateProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return auth()->check() && auth()->user()->can('admin.product.edit');

    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return Collection::make()
            ->merge(Product::rules())
            ->merge(Property::rulesForModel())
            ->merge(SeoModel::rulesForModels())
            ->forget(['company_id' , 'slug' ,'recommend_type'])->toArray();

    }
}
