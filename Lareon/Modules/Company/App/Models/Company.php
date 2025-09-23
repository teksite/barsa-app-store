<?php

namespace Lareon\Modules\Company\App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Route;
use Illuminate\Validation\Rule;
use Lareon\CMS\App\Models\User;
use Lareon\Modules\Company\App\Enums\CompanyTypeEnum;
use Lareon\Modules\Company\App\Rules\NationalIdRule;
use Lareon\Modules\Company\App\Rules\NationalNumberRule;
use Lareon\Modules\Product\App\Models\Product;
use Teksite\Extralaravel\Casts\SlugCast;


class Company extends Model
{

    protected $fillable = ['url', 'national_id', 'title', 'telephone', 'phone', 'email', 'type'];

    static function rules(): array
    {
        return [
            'url' => 'required|string|unique:companies,url|max:255',
            'title' => 'required|string|unique:companies,title|max:200',
            'telephone' => 'required|string|max:12|min:8',
            'phone' => 'required|string|max:12|min:8',
            'email' => 'required|string|email|max:200|unique:companies,email',
            'type' => ['required', Rule::enum(CompanyTypeEnum::class)],

            'national_id' => ['required', 'string', 'unique:companies,national_id',
                Rule::when(fn($input) => (int)$input->type === CompanyTypeEnum::LEGAL->value, [new NationalIdRule()]),
                Rule::when(fn($input) => (int)$input->type === CompanyTypeEnum::NATURAL->value, [new NationalNumberRule()]),
            ],
        ];
    }

    protected function casts(): array
    {
        return [
            'featured_image' => SlugCast::class,
        ];
    }

    public function users()
    {
        return $this->hasMany(User::class);
    }

    public function path()
    {
        return Route::has('users.show') ? route('users.show', $this) : null;
    }

    public function sitemapGroup(): string
    {
        return 'companies';
    }

    public function breadcrumb(): array
    {
        $breadcrumb = [];
        $breadcrumb[$this->attributes['title']] = $this->path();

        return $breadcrumb;
    }

    public function products()
    {
        return $this->hasMany(Product::class);
    }

}
