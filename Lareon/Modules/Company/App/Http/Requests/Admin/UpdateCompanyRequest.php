<?php

namespace Lareon\Modules\Company\App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;
use Lareon\Modules\Company\App\Enums\CompanyTypeEnum;
use Lareon\Modules\Company\App\Models\Company;
use Lareon\Modules\Company\App\Rules\NationalIdRule;
use Lareon\Modules\Company\App\Rules\NationalNumberRule;

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
        return array_merge(Company::rules(), [
            'url' => ['required', 'string', 'max:255', Rule::unique('companies', 'url')->ignore($this->company->id)],
            'title' => ['required', 'string', 'max:255', Rule::unique('companies', 'title')->ignore($this->company->id)],
            'telephone' => ['nullable', 'string', 'min:8', 'max:20', Rule::unique('companies', 'telephone')->ignore($this->company->id)],
            'phone' => ['nullable', 'string', 'min:8', 'max:20', Rule::unique('companies', 'url')->ignore($this->company->id)],
            'email' => ['required', 'string', 'max:255', 'email', Rule::unique('companies', 'email')->ignore($this->company->id)],

            'national_id' => ['required', 'string', Rule::unique('companies', 'national_id')->ignore($this->company->id),
                Rule::when(fn($input) => (int)$input->type === CompanyTypeEnum::LEGAL->value, [new NationalIdRule()]),
                Rule::when(fn($input) => (int)$input->type === CompanyTypeEnum::NATURAL->value, [new NationalNumberRule()]),
            ],
        ]);
    }
}
