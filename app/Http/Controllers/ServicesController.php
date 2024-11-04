<?php

namespace App\Http\Controllers;

use App\Models\Service;
use Illuminate\Http\Request;

class ServicesController extends Controller
{
    public function index()  {
        $services = Service::where('status',1)->orderBy('id','asc')->get();
        $data['services'] = $services;
        return view('services',$data);
    }

    public function detail($id) {
        $service = Service::where('id', $id)->first();

        if (empty($service)) {
            return redirect('/');
        }

        $data['service'] = $service;
        // Check if the data is already an array
        $data['additional_videos_links'] = is_string($service->additional_videos_links) ? json_decode($service->additional_videos_links, true) : $service->additional_videos_links;
        $data['gallery_images'] = is_string($service->gallery_images) ? json_decode($service->gallery_images, true) : $service->gallery_images;


        return view('service-detail', $data);
    }
}
