<?php

namespace Lareon\CMS\App\Console\Command;

use Illuminate\Console\Command;
use Illuminate\Filesystem\Filesystem;

class StorageCustomLink extends Command
{

    protected $signature = 'storage:link-custom
                {--relative : Create symbolic link using relative paths}
                {--force : Recreate existing symbolic links}';

    protected $description = 'Create symbolic links for storage directories in public_html/storage/uploads';

    protected Filesystem $files;

    public function __construct(Filesystem $files)
    {
        parent::__construct();
        $this->files = $files;
    }

    public function handle(): int
    {
        $relative = $this->option('relative');
        $force = $this->option('force');

        $links = [
            base_path('public_html/storage') => storage_path('app/public'),
        ];

        foreach ($links as $link => $target) {
            $this->line("Processing link: {$link} → {$target}");

            // ایجاد مسیر storage در صورت نبودن
            if (! $this->files->exists($target)) {
                $this->files->makeDirectory($target, 0777, true);
                $this->info("Created storage path: {$target}");
            }

            // ایجاد مسیر والد public_html/storage در صورت نبودن
            $publicParent = dirname($link);
            if (! $this->files->exists($publicParent)) {
                $this->files->makeDirectory($publicParent, 0777, true);
                $this->info("Created parent public path: {$publicParent}");
            }

            // حذف لینک قدیمی در صورت force
            if ($this->files->exists($link) && $force) {
                $this->files->delete($link);
            }

            // ساخت لینک
            if (! $this->files->exists($link)) {
                try {
                    if ($relative) {
                        $this->files->relativeLink($target, $link);
                    } else {
                        $this->files->link($target, $link);
                    }
                    $this->info("Link created: {$link} → {$target}");
                } catch (\Exception $e) {
                    $this->error("Failed to create link: {$link}");
                    $this->error($e->getMessage());
                }
            } else {
                $this->comment("Link already exists: {$link}");
            }
        }

        return 0;
    }
}
