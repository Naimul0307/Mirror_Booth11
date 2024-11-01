<?php

namespace App\Http\Controllers;

use App\Models\Review;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function index()  {
        $reviews = Review::where('status',1)->orderBy('created_at','ASC')->get();
        $data['reviews'] = $reviews;
        return view('common.review',$data);
    }

}
