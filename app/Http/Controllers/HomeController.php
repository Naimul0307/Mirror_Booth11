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

        $data['meta_title'] = 'HOME | MIRROR BOOTH EVENT SERVICES L.L.C.-DUBAI,UAE';
        $data['meta_description'] = 'WELCOME TO MIRROR BOOTH EVENT SERVICES L.L.C. PROVIDING PREMIUM PHOTO BOOTH SERVICES FOR EVENTS IN DUBAI. CAPTURE MEMORIES WITH OUR PROFESSIONAL SERVICES.';
        $data['meta_keywords'] = 'MIRROR BOOTH, PHOTO BOOTH, VIDEOS BOOTH, MAGAZIN BOOTH, EVENT SERVICES, MIRROR BOOTH EVENT SERVICES L.L.C, DUBAI, UAE';

        return view('home', $data); // Adjust this to your view file
    }
}
