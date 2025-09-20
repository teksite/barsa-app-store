<?php

namespace Lareon\Modules\Product\App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Str;
use Lareon\Modules\Seo\App\Traits\SeoAble;
use Lareon\Modules\Tag\App\Traits\Taggable;

class Product extends Model
{
    use SoftDeletes ,SeoAble ,Taggable;

    protected $fillable = ['title', 'excerpt', 'body', 'featured_image', 'images', 'features', 'features_soon', 'requirements', 'catalog', 'publish'];

    protected function casts(): array
    {
        return [
            'images'=>'json',
            'features'=>'json',
            'features_soon'=>'json',
            'requirements'=>'json',
            'publish'=>'boolean',
        ];
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
        ];
    }

    protected static function booted(): void
    {
        static::addGlobalScope('ancient', function (Builder $builder) {
            if (!request()->routeIs('admin.*') || !auth()->check() || !auth()->user()->can('admin')) {
                $builder->where('active', true);
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
}
