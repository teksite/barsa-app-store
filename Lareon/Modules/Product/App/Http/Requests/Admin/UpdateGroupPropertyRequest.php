<?php
namespace Lareon\Modules\Product\App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;
use Lareon\Modules\Product\App\Models\Group;

class UpdateGroupPropertyRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return auth()->check() && auth()->user()->can('admin.product.property.edit');
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return array_merge(Group::rules(),
            ['title' => ['required','string','max:200',Rule::unique('product_property_groups' ,'title')->ignore($this->group->id)]],
        );
    }
}
