<?php
namespace Lareon\Modules\Company\App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;
use Lareon\Modules\Company\App\Models\Company;

class UpdateCompanyRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return auth()->check() && auth()->user()->can('admin.company.edit');
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return array_merge(Company::rules(),[
            'url' => 'required|string|unique:companies,url|max:255',
            'national_id' => 'required|string|unique:companies,national_id|max:12',
            'title' => 'required|string|unique:companies,title|max:200',
            'telephone' => 'required|string|max:12|min:8',
            'phone' => 'required|string|max:12|min:8',
            'email' => 'required|string|email|max:200|unique:companies,email',
        ]);
    }
}
