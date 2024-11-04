<?php

use App\Models\Blog;
use App\Models\Category;
use App\Models\FeaturedService;
use App\Models\Setting;


function getSettings(){
    return Setting::first();
}

function getServices(){
    return FeaturedService::leftJoin('categories','categories.id','featured_services.category_id')
    ->orderBy('sort_order','ASC')
    ->get();
}

function getCategories()
{
    return Category::orderBy('name','ASC')
    ->with('services')
    ->orderBy('id','DESC')
    ->where('status',1)
    ->get();
}

function getLatestBlog(){
    $blogs = Blog::where('status',1)->orderBy('created_at','DESC')->take(6)->get();
    return $blogs;
}

?>
