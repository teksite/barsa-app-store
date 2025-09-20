<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class ClientLayout extends Component
{
    public ?string $seo=null;
    /**
     * Create a new component instance.
     */
    public function __construct( null|string $seo=null)
    {
      $this->seo = $seo;
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('layouts.client.master' ,['seo'=>$this->seo]);
    }
}
