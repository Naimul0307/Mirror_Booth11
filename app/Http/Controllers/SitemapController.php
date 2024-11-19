<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Service;
use Illuminate\Http\Request;
use Spatie\Sitemap\Sitemap;
use Spatie\Sitemap\Tags\Url;

class SitemapController extends Controller
{
    public function generate()
    {
        $sitemap = Sitemap::create();

        // Add static pages
        $sitemap->add(Url::create('/'))
                ->add(Url::create('/about'))
                ->add(Url::create('/services'))
                ->add(Url::create('/contact'));

        // Add category pages dynamically
        $categories = Category::all(); // Ensure this fetches a collection of Category models
        foreach ($categories as $category) {
            $sitemap->add(
                Url::create("/category/{$category->slug}")
                    ->setLastModificationDate($category->updated_at)
            );
        }

        // Add product detail pages dynamically
        $services = Service::all(); // Ensure this fetches a collection of Product models
        foreach ($services as $service) {
            $sitemap->add(
                Url::create("/service/{$service->slug}")
                    ->setLastModificationDate($service->updated_at)
            );
        }

        // Write the sitemap to the file
        $sitemap->writeToFile(public_path('sitemap.xml'));
    }
}
