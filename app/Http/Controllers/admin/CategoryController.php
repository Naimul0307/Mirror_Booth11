<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CategoryController extends Controller
{
    //
    public function index(Request $request)
    {
        $categories = Category::orderBy('created_at','ASC');

        if (!empty($request->keyword)) {
            $categories = $categories->where('name','like','%'.$request->keyword.'%');
        }

        $categories = $categories->paginate(20);

        $data['categories'] = $categories;
        return view('admin.category.list',$data);
    }

    public function create()
    {
        return view('admin.category.create');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'name' => 'required|unique:categories',
        ]);

        if($validator->passes()) {
            $category = new Category;
            $category->name = $request->name;
            $category->status = $request->status;

            $category->save();
            $request->session()->flash('success','Category Created Successfully');

            return response()->json([
                'status' => 200,
                'message' => 'Category Created Successfully'
            ]);

        } else {
            // return errors
            return response()->json([
                'status' => 0,
                'errors' => $validator->errors()
            ]);
        }
    }

    public function edit(Request $request,$id)
    {
        $category = Category::where('id',$id)->first();

        if(empty($category)){
            $request->session()->flash('error','Record not found in DB');
            return redirect()->route('categoryList');
        }

        $data['category'] = $category;

        return view('admin.category.edit',$data);
    }

    public function update(Request $request,$id)
    {
        $category = Category::find($id);

        $validator = Validator::make($request->all(),[
            'name' => 'required|unique:categories,name,'.$category->id.',id',
        ]);

        if($validator->passes()) {
            // Form validated successfully

            if(empty($category)){
                $request->session()->flash('error','Record not found in DB');
                return response()->json([
                    'status' => 0,
                ]);
            }

            $category->name = $request->name;
            $category->status = $request->status;
            $category->save();

            $request->session()->flash('success','Category Created Successfully');

            return response()->json([
                'status' => 200,
                'message' => 'Category Created Successfully'
            ]);

        } else {
            // return errors
            return response()->json([
                'status' => 0,
                'errors' => $validator->errors()
            ]);
        }
        return view();
    }

    public function delete($id, Request $request) {

        $category = Category::where('id',$id)->first();

        if (empty($category)) {

            $request->session()->flash('error','Record not found');

            return response([
                'status' => 0
            ]);
        }

        Category::where('id',$id)->delete();

        $request->session()->flash('success','Service deleted successfully.');

        return response([
            'status' => 1
        ]);

    }


}
