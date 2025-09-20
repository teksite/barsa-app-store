<?php
namespace Lareon\Modules\Notifier\App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class NewNotifierRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return auth()->check() && auth()->user()->can('admin.notifier.create');
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'users'=>'sometimes|array',
            'users.*'=>'exists:users,id',
            'roles'=>'sometimes|array',
            'roles.*'=>'exists:auth_roles,id',
            'types'=>'required|array',
            'types.*'=>['required','string'],
            'message'=>'required|string',
            'title'=>'required|string',
        ];
    }
}
