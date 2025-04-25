<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\URL;

class AppServiceProvider extends ServiceProvider
{
    public function register(): void
    {
        //
    }

    public function boot(): void
    {
        if (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https') {
            URL::forceScheme('https');
        }

        if (app()->environment('production')) {
            URL::forceScheme('https');
        }
    }
    
    // public function boot(): void
    // {
    //     // Force HTTPS scheme globally
    //     if (!app()->isLocal()) {
    //         URL::forceScheme('https');
    //     }

    //     // Optional: Forcing HTTPS in local environment too
    //     // URL::forceScheme('https');
    // }
}

//need to add for Cloudflare or AWS ELB
// if (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https') {
//     \Illuminate\Support\Facades\URL::forceScheme('https');
// }



