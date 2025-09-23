<?php

namespace Lareon\Modules\Company\App\Rules;

use Closure;
use Illuminate\Contracts\Validation\ValidationRule;

class NationalIdRule implements ValidationRule
{
    /**
     * Run the validation rule.
     *
     * @param  \Closure(string, ?string=): \Illuminate\Translation\PotentiallyTranslatedString  $fail
     */
    public function validate(string $attribute, mixed $value, Closure $fail): void
    {
        $value = trim($value);

        // Must be 11 digits
        if (!preg_match('/^\d{11}$/', $value)) {
            $fail('The company national ID must be exactly 11 digits.');
            return;
        }

        // Invalid if all digits are the same
        if (preg_match('/^(\d)\1{10}$/', $value)) {
            $fail('The company national ID is invalid.');
            return;
        }

        $digits = array_map('intval', str_split($value));

        $control = $digits[10];
        $D = $digits[9] + 2;

        $weights = [29, 27, 23, 19, 17, 29, 27, 23, 19, 17];
        $S = 0;

        for ($i = 0; $i < 10; $i++) {
            $S += ($D + $digits[$i]) * $weights[$i];
        }

        $S %= 11;
        if ($S === 10) $S = 0;

        if ($S !== $control) {
            $fail('The company national ID is invalid.');
        }
    }
}
