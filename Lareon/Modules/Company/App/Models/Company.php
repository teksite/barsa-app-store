<?php

namespace Lareon\Modules\Company\App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Route;
use Lareon\CMS\App\Models\User;
use Teksite\Extralaravel\Casts\SlugCast;


class Company extends Model
{

    protected $fillable = ['url', 'national_id', 'title', 'telephone', 'phone', 'email',];

    static function rules(): array
    {
        return [
            'url' => 'required|string|unique:companies,url|max:255',
            'national_id' => 'required|string|unique:companies,national_id|max:12',
            'title' => 'required|string|unique:companies,title|max:200',
            'telephone' => 'required|string|max:12|min:8',
            'phone' => 'required|string|max:12|min:8',
            'email' => 'required|string|email|max:200|unique:companies,email',
        ];
    }

    protected function casts(): array
    {
        return [
            'featured_image' =>SlugCast::class,
        ];
    }

    public function users()
    {
        return $this->hasMany(User::class);
    }

    public function path()
    {
        return Route::has('users.show') ?  route('users.show' , $this) : null;
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

}
