<?php

namespace Lareon\CMS\App\Traits;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Lareon\CMS\App\Models\UserMeta;

trait UserHasMeta
{
    /**
     * Define the relationship with UserMeta
     *
     * @return HasMany
     */
    public function meta(): HasMany
    {
        return $this->hasMany(UserMeta::class);
    }


    /**
     * Retrieve meta data based on key(s)
     *
     * @param string|array<string> $keys Meta key(s) to query ('*' for all)
     * @param string|array<string> $columns Column(s) to select
     * @return mixed Collection|Model|string|null
     */
    public function getMeta(string|array $keys = '*', string|array $columns = ['*']): mixed
    {
        $query = $this->meta();

        // Apply key filtering
        if ($keys !== '*') {
            $query = is_array($keys)
                ? $query->whereIn('key', $keys)
                : $query->where('key', $keys);
        }

        // حالت 1: یک key + یک column
        if (is_string($keys) && $keys !== '*' && is_string($columns)) {
            return $query->value($columns); // مستقیم مقدار ستون
        }

        if (is_array($keys) && is_string($columns)) {
            return $query->pluck($columns, 'key'); // خروجی: [key => value]
        }

        return $keys === '*' || is_array($keys)
            ? $query->get($columns)
            : $query->first($columns);
    }


    public function getMetaArray(string|array $keys = '*', string|array $columns = ['*']): array
    {
        $result = $this->getMeta($keys, $columns);

        // اگر نتیجه Collection باشه → به آرایه با کلیدها تبدیل کن
        if ($result instanceof \Illuminate\Support\Collection) {
            return $result->toArray();
        }

        // اگر مدل تکی باشه → به آرایه تبدیل کن
        if ($result instanceof \Illuminate\Database\Eloquent\Model) {
            return $result->toArray();
        }

        // اگر مقدار رشته یا null بود → همون رو بده
        return (array) $result;
    }
}
