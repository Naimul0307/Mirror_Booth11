<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Service;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
    public function index($id)  {

        $categorySelected = '';

        $categories = Category::orderBy('id','asc')->with('services')->where('status',1)->get();
        $services = Service::where('status',1);

        if(!empty($id)){
            $category = Category::where('id',$id)->first();
            $services = $services->where('category_id',$category->id);
            $categorySelected = $category->id;
        }

        $services = $services->paginate(100);

        $data['category'] = $category;
        $data['services'] = $services;
        $data['categorySelected'] = $categorySelected;

        return view('category',$data);
    }

}
