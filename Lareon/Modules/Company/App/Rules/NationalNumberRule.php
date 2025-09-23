<?php

namespace Lareon\Modules\Company\App\Rules;

use Closure;
use Illuminate\Contracts\Validation\ValidationRule;

class NationalNumberRule implements ValidationRule
{
    /**
     * Run the validation rule.
     *
     * @param  \Closure(string, ?string=): \Illuminate\Translation\PotentiallyTranslatedString  $fail
     */
    public function validate(string $attribute, mixed $value, Closure $fail): void
    {
        $value = trim($value);

        if (!preg_match('/^\d{10}$/', $value) || preg_match('/^(\d)\1{9}$/', $value)) {
            $fail('The national code is invalid.');
            return;
        }

        $checkDigit = (int) $value[9];
        $sum = 0;

        for ($i = 0; $i < 9; $i++) {
            $sum += (int) $value[$i] * (10 - $i);
        }

        $mod = $sum % 11;

        if (!(($mod < 2 && $checkDigit == $mod) || ($mod >= 2 && $checkDigit == (11 - $mod)))) {
            $fail('The national code is invalid.');
        }

    }
}
