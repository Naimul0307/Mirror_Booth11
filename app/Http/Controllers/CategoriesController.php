<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Service;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
    public function index($slug)  {
        $categorySelected = '';

        // Order categories by ID and retrieve active ones with their services
        $categories = Category::where('status', 1)
                               ->orderBy('id', 'asc')
                               ->with('services')
                               ->get();

        // Find the category by slug
        $category = Category::where('slug', $slug)->firstOrFail();

        // Get services in the selected category and paginate results
        $services = Service::where('status', 1)
                            ->where('category_id', $category->id)
                            ->paginate(100);

        $data['category'] = $category;
        $data['services'] = $services;
        $data['categorySelected'] = $category->id;

        return view('category', $data);
    }
}
