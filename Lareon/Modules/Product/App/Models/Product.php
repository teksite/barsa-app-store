<?php

namespace Lareon\Modules\Product\App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;
use Lareon\CMS\App\Models\User;
use Lareon\Modules\Company\App\Models\Company;
use Lareon\Modules\Product\App\Enums\RecommendTypeEnum;
use Lareon\Modules\Seo\App\Traits\SeoAble;
use Lareon\Modules\Tag\App\Traits\Taggable;

class Product extends Model
{
    use SoftDeletes ,SeoAble ,Taggable;

    protected $fillable = ['company_id','user_id','title', 'excerpt', 'body', 'featured_image', 'images', 'features', 'features_soon', 'requirements', 'catalog', 'publish' ,'recommend_type'];

    protected function casts(): array
    {
        return [
            'images'=>'json',
            'features'=>'json',
            'features_soon'=>'json',
            'requirements'=>'json',
            'publish'=>'boolean',
            'recommend_type'=>RecommendTypeEnum::class,
        ];
    }

    protected $appends = [
        'owner',
    ];

    protected function owner(): Attribute
    {
        return Attribute::make(
            get: fn($value) =>$this->company
        );
    }
    protected function author(): Attribute
    {
        return Attribute::make(
            get: fn($value) =>[
                'id'=>$this->user?->id ?? '',
                'name'=>$this->user?->name ?? '',
                'path'=>$this->user?->path() ?? '',
            ]
        );
    }


    /**
     * @param array $globalScopes
     */
    public static function setGlobalScopes(array $globalScopes): void
    {
        self::$globalScopes = $globalScopes;
    }

    public static function rules(): array
    {
        return [
            "company_id" => "required|exists:companies,id",
            "title" => "string|required|max:255",
            "excerpt" => "nullable|string",
            "body" => "nullable|string",
            "featured_image" => "nullable|string",
            "images" => "nullable|array",
            "features" => "nullable|array",
            "features_soon" => "nullable|array",
            "requirements" => "nullable|array",
            "catalog" => "nullable|string|max:255",
            "publish" => "nullable|boolean",
            "recommend_type" => Rule::enum(RecommendTypeEnum::class),
        ];
    }

    protected static function booted(): void
    {
        static::addGlobalScope('ancient', function (Builder $builder) {
            if (!request()->routeIs('admin.*') || !auth()->check() || !auth()->user()->can('admin')) {
                $builder->where('publish', true);
            }
        });
        static::creating(function ($product) {
            if (empty($product->slug)) $product->slug = time().'-'.strtolower(Str::random(3));
        });
    }

    public function markAsActive()
    {
        $this->update([
            'publish' => true,
        ]);
    }

    public function sitemapGroup(): string
    {
        return 'products';
    }

    public function breadcrumb(): array
    {
        $breadcrumb= [];
        if (Route::has('products.index')) $breadcrumb[__('products')] = route('products.index');
        if (Route::has('products.show')) $breadcrumb[$this->attributes['title']] = $this->path();

        return $breadcrumb;
    }

    public function path()
    {
        return Route::has('products.show') ? route('products.show',$this) : null;
    }

    public function versions()
    {
        return $this->hasMany(Version::class ,'product_id');
    }

    public function properties()
    {
        return $this->belongsToMany(Property::class ,'products_properties' ,'product_id' , 'property_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function company()
    {
        return $this->belongsTo(Company::class);
    }

    public function groupedProperties()
    {
        return $this->properties()
            ->select('id', 'title', 'group_id')
            ->with([
                'group:id,title'
            ])
            ->get()
            ->groupBy(fn($property) => $property->group->title);
    }

}
