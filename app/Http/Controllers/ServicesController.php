<?php

namespace App\Http\Controllers;

use App\Models\Service;
use Illuminate\Http\Request;

class ServicesController extends Controller
{
    public function index()  {
        $services = Service::where('status',1)->orderBy('id','asc')->get();
        $data['services'] = $services;
        $data['meta_title'] = 'All SERVICES | MIRROR BOOTH DUBAI';
        $data['meta_description'] = 'Explore our full range of professional mirror booth services in Dubai.';
        $data['meta_keywords'] = 'mirror booth services, events, dubai';
        return view('services',$data);
    }

    public function detail($slug) {
        $service = Service::where('slug', $slug)->first();

        if (empty($service)) {
            return redirect('/');
        }

        $data['service'] = $service;
        // Check if the data is already an array
        $data['additional_videos_links'] = is_string($service->additional_videos_links) ? json_decode($service->additional_videos_links, true) : $service->additional_videos_links;
        $data['gallery_images'] = is_string($service->gallery_images) ? json_decode($service->gallery_images, true) : $service->gallery_images;

        $data['meta_title'] = ($service->meta_title ?? $service->title) . ' | Mirror Booth Dubai';
        $data['meta_description'] = $service->meta_description ?? Str::limit(strip_tags($service->description), 150);
        $data['meta_keywords'] = $service->meta_keywords ?? 'mirror booth, services';

        return view('service-detail', $data);
    }
}
