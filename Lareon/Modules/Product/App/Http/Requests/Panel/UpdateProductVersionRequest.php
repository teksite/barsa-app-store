<?php
namespace Lareon\Modules\Product\App\Http\Requests\Panel;

use Illuminate\Foundation\Http\FormRequest;
use Lareon\Modules\Product\App\Models\Product;
use Lareon\Modules\Product\App\Models\Version;

class UpdateProductVersionRequest extends FormRequest
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
        return Version::rules();

    }
}
