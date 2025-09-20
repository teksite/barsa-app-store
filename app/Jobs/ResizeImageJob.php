<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\File;
use Intervention\Image\Encoders\WebpEncoder;
use Intervention\Image\Encoders\AvifEncoder;
use Intervention\Image\Laravel\Facades\Image;

class ResizeImageJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    // نام صف

    private array $sizes = [200, 480, 768, 1200];
    private array $modernFormats = ['avif', 'webp'];
    private array $fallbackFormats = ['jpg', 'jpeg', 'png'];

    public function __construct()
    {
        $this->onQueue('image');
    }

    public function handle(): void
    {
        $uploadPath = storage_path('app/public/uploads');

        if (!File::exists($uploadPath)) {
            return;
        }

        // بازگشتی همه فایل‌ها
        $this->scanDirectory($uploadPath);
    }

    private function scanDirectory(string $directory): void
    {
        $items = File::allFiles($directory);

        foreach ($items as $file) {
            $ext = strtolower($file->getExtension());
            if (!in_array($ext, $this->fallbackFormats)) continue;

            $this->processImage($file->getPathname(), $ext);
        }

        // زیرپوشه‌ها
        $subDirs = File::directories($directory);
        foreach ($subDirs as $subDir) {
            $this->scanDirectory($subDir);
        }
    }

    private function processImage(string $filePath, string $ext): void
    {
        $relativePath = str_replace(storage_path('app/public/'), '', $filePath);
        $dir  = dirname($relativePath);
        $name = pathinfo($filePath, PATHINFO_FILENAME);

        $resizedDir = storage_path("app/public/resized/{$dir}");
        File::ensureDirectoryExists($resizedDir);

        $image = Image::read($filePath);
        $originalWidth = $image->width();

        foreach ($this->sizes as $w) {
            if ($w > $originalWidth) continue;

            foreach ($this->modernFormats as $format) {
                $resizedFile = "{$resizedDir}/{$name}-{$ext}-{$w}.{$format}";

                if (!File::exists($resizedFile)) {
                    $resized = $image->resize($w, null, function ($constraint) {
                        $constraint->aspectRatio();
                        $constraint->upsize();
                    });

                    $encoder = match ($format) {
                        'webp' => new WebpEncoder(80),
                        'avif' => new AvifEncoder(80),
                        default => null
                    };

                    if ($encoder) {
                        $resized->encode($encoder)->save($resizedFile);
                    }
                }
            }
        }

        // نسخه کامل بزرگترین عکس برای هر فرمت مدرن
        foreach ($this->modernFormats as $format) {
            $fullFile = "{$resizedDir}/{$name}-{$ext}.{$format}";
            if (!File::exists($fullFile)) {
                $encoder = match ($format) {
                    'webp' => new WebpEncoder(80),
                    'avif' => new AvifEncoder(80),
                    default => null
                };

                if ($encoder) {
                    $image->encode($encoder)->save($fullFile);
                }
            }
        }
    }
}
