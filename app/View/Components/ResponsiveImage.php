<?php

namespace App\View\Components;

use Illuminate\View\Component;
use Illuminate\Support\Facades\File;

class ResponsiveImage extends Component
{
    public string $path;
    public string $alt;
    public array $sizes;
    public array $modernFormats;
    public array $srcsets = [];

    public function __construct(string $path, string $alt = '')
    {
        $this->path = trim($path, '/');
        $this->alt = $alt;
        $this->sizes = [480, 768, 1200]; // سایزهای responsive
        $this->modernFormats = ['avif','webp'];
    }

    /**
     * تولید srcset ها برای <picture>
     */
    public function generateSrcsets(): array
    {
        $srcsets = [];
        $dir  = dirname($this->path);
        $name = pathinfo($this->path, PATHINFO_FILENAME);
        $ext  = pathinfo($this->path, PATHINFO_EXTENSION);

        $resizedDir =str_replace('storage/uploads', 'storage/resized/uploads', $dir);


        foreach ($this->modernFormats as $format) {
            $urls = [];
            foreach ($this->sizes as $w) {
                $file = public_path("{$resizedDir}/{$name}-{$ext}-{$w}.{$format}");
                if (File::exists($file)) {
                    $urls[$w] = asset("/{$resizedDir}/{$name}-{$ext}-{$w}.{$format}");
                }
            }

            $fullFile = public_path("{$resizedDir}/{$name}-{$ext}.{$format}");
            if (File::exists($fullFile)) {
                $urls['max'] = asset("/{$resizedDir}/{$name}-{$ext}.{$format}");
            }

            $srcsets['resized'][$format]=$urls;
        }


        foreach ($this->sizes as $w) {
            $file = public_path("{$resizedDir}/{$name}-{$ext}-{$w}.{$ext}");
            if (File::exists($file)) {
                $urls[$w] = asset("/{$resizedDir}/{$name}-{$ext}-{$w}.{$ext}");
            }
            $srcsets['resized'][$ext]=$urls;

        }


        $srcsets['fallback'] = $this->path;
        return $srcsets;
    }

    public function render()
    {
        // قبل از رندر کردن، srcsets را بساز
        $this->srcsets = $this->generateSrcsets();

        return view('components.responsive-image', [
            'srcsets' => $this->srcsets,
            'alt' => $this->alt,
        ]);
    }
}
