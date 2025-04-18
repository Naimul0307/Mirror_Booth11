<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BlogController extends Controller
{
    public function index() {
    
        $blogs = Blog::where('status',1)->orderBy('created_at','DESC')->get();
        $data['meta_title'] = 'All BLOG | MIRROR BOOTH EVENT SERVICES L.L.C.-DUBAI';
        $data['meta_description'] = 'EXPLORE OUR FULL RANGE OF PROFESSIONAL EVENT SERVICES IN DUBAI,UAE';
        $data['meta_keywords'] = 'MIRROR BOOTH, PHOTO BOOTH, VIDEOS BOOTH, MAGAZIN BOOTH, EVENT SERVICES, MIRROR BOOTH EVENT SERVICES L.L.C, DUBAI, UAE';
        $data['blogs'] = $blogs;

        return view('blog',$data);
    }

    public function detail($slug) {
        
        $blog = Blog::where('slug', $slug)->first();

        if (empty($blog)) {
            return redirect('/');
        }

        $data['blog'] = $blog;
       
        $data['meta_title'] = $blog->meta_title ?? $blog->name;
        $data['meta_description'] = $blog->meta_description ?? Str::limit(strip_tags($blog->description), 150);
        $data['meta_keywords'] = $blog->meta_keywords ?? 'MIRROR BOOTH, PHOTO BOOTH, VIDEOS BOOTH, MAGAZIN BOOTH, EVENT SERVICES, DUBAI, UAE';

        return view('blog-detail', $data);
    }
}
