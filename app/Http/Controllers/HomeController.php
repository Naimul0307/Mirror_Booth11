<?php

namespace App\Http\Controllers;

use App\Models\Page;
use Illuminate\Http\Request;
use App\Models\Service;

class HomeController extends Controller
{
    public function index() {
        $services = Service::where('status', 1)->orderBy('created_at', 'ASC')->get(); // Get all active services

        // Group services by category
        $groupedServices = $services->groupBy('category_id');

        // Limit to 8 services for each category
        $limitedServices = [
            1 => $groupedServices->get(1, collect())->take(4), // Photo Booths
            2 => $groupedServices->get(2, collect())->take(4), // Games & Interactives
            3 => $groupedServices->get(3, collect())->take(4)  // Video Booths
        ];

        $data['limitedServices'] = $limitedServices; // Pass to the view
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
