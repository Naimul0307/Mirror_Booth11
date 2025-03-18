<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Page;
use App\Models\Service;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index() {
        $services = Service::where('status', 1)->orderBy('id', 'asc')->get(); // Get all active services

        // Group services by category
        $groupedServices = $services->groupBy('category_id');

        // Fetch all categories from the database
        $categories = Category::all();

        $data['groupedServices'] = $groupedServices; // Pass grouped services to the view
        $data['categories'] = $categories; // Pass categories to the view
        return view('home', $data); // Adjust this to your view file
    }

    public function about() {
        $page = Page::where('id',12)->first();
        return view('static-page',['page' => $page]);
    }

    public function privacy() {
        $page = Page::where('id',16)->first();
        return view('static-page',['page' => $page]);
    }

    public function terms() {
        $page = Page::where('id',14)->first();
        return view('static-page',['page' => $page]);
    }
}
