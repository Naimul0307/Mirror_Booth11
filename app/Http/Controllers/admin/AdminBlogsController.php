<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Exports\ServicesExport;
use App\Models\TempFile;
use Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;


class AdminBlogsController extends Controller
{
    public function index(Request $request)
    {
        $blogs = Blog::orderBy('created_at','ASC');

        if (!empty($request->keyword)) {
            $blogs = $blogs->where('name','like','%'.$request->keyword.'%');
        }

        $blogs = $blogs->paginate(20);

        $data['blogs'] = $blogs;

        return view('admin.blog.list',$data);
    }
    
    public function create() {
        return view('admin.blog.create');
    }
    
    // This method will save a blog in DB
    public function save(Request $request) {

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:blogs'
        ]);

        if($validator->passes()) {
            // Form validated successfully

            $blog = new Blog;
            $blog->name = $request->name;
            $blog->description = $request->description;
            $blog->short_desc = $request->short_description;
            $blog->meta_title = $request->meta_title ?: $request->name . ' | MIRROR BOOTH EVENT SERVICES L.L.C';
            $blog->meta_description = $request->meta_description ?: 'EXPLORE ' . $request->name . ' FROM MIRROR BOOTH EVENT SERVICES L.L.C, PROVIDING TOP EVENT SERVICES IN DUBAI.';
            $blog->meta_keywords = $request->meta_keywords ?: 'MIRROR BOOTH, EVENT SERVICES, ' . $request->name . ', DUBAI, UAE';
            $blog->image_alt_text = $request->image_alt_text;
            $blog->status = $request->status;
            $blog->save();

            if ($request->image_id > 0) {
                $tempImage = TempFile::where('id', $request->image_id)->first();
                $tempFileName = $tempImage->name;
                $imageArray = explode('.', $tempFileName);
                $ext = end($imageArray);

                // Replace ID with Slug in the new file name
                $newFileName = $tempFileName . '-' . $blog->slug . '.' . $ext;

                $sourcePath = './uploads/temp/' . $tempFileName;

                // Generate Small Thumbnail
                $dPath = './uploads/blogs/thumb/small/' . $newFileName;
                $manager = new ImageManager(new Driver());
                $img = $manager->read($sourcePath);
                $img->cover(360, 220);
                $img->save($dPath);

                // Generate Large Thumbnail
                $dPath = './uploads/blogs/thumb/large/' . $newFileName;
                $manager = new ImageManager(new Driver());
                $img = $manager->read($sourcePath);
                $img->scaleDown(1150);
                $img->save($dPath);

                // Save new file name in the database
                $blog->image = $newFileName;
                $blog->save();

                // Delete temp file
                File::delete($sourcePath);
            }

            $request->session()->flash('success','Blog Created Successfully');

            return response()->json([
                'status' => 200,
                'message' => 'Blog Created Successfully'                                       
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
        $blog = Blog::where('id',$id)->first();
        if(empty($blog)){
            $request->session()->flash('error','Record not found');
            return redirect()->route('bloglist');
        }
        $data['blog'] = $blog;
        return view('admin.blog.edit',$data); 
    }

    public function update($id, Request $request) {
        
        $blog = Blog::find($id);

        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:blogs,name,' . $blog->id . ',id',
            'slug' => 'required|unique:blogs,slug,' . $blog->id . ',id',
        ]);
        if($validator->passes()) {

            $blog = Blog::find($id);

            if (empty($blog)) {
                $request->session()->flash('error','Record not found');
                return response()->json([
                    'status' => 0,                    
                ]);
            }

            $oldImageName = $blog->image;

            $blog->name = $request->name;
            $blog->description = $request->description;
            $blog->short_desc = $request->short_description;
            $blog->meta_title = $request->meta_title ?: $request->name . ' | MIRROR BOOTH EVENT SERVICES L.L.C';
            $blog->meta_description = $request->meta_description ?: 'EXPLORE ' . $request->name . ' FROM MIRROR BOOTH EVENT SERVICES L.L.C, PROVIDING TOP EVENT SERVICES IN DUBAI.';
            $blog->meta_keywords = $request->meta_keywords ?: 'MIRROR BOOTH, EVENT SERVICES, ' . $request->name . ', DUBAI, UAE';
            $blog->image_alt_text = $request->image_alt_text;
            $blog->status = $request->status;
            $blog->slug = $request->slug;
            $blog->save();

            if ($request->image_id > 0) {
                $tempImage = TempFile::where('id', $request->image_id)->first();
                $tempFileName = $tempImage->name;
                $imageArray = explode('.', $tempFileName);
                $ext = end($imageArray);

                $newFileName = pathinfo($tempFileName, PATHINFO_FILENAME) . '-' . $blog->slug . '.' . $ext;

                $sourcePath = './uploads/temp/' . $tempFileName;

                // Generate Small Thumbnail
                $dPath = './uploads/blogs/thumb/small/' . $newFileName;
                $manager = new ImageManager(new Driver());
                $img = $manager->read($sourcePath);
                $img->cover(360,220);
                $img->save($dPath);

                // Delete old small thumbnail
                $sourcePathSmall = './uploads/blogs/thumb/small/' . $oldImageName;
                File::delete($sourcePathSmall);

                // Generate Large Thumbnail
                $dPath = './uploads/blogs/thumb/large/' . $newFileName;
                $manager = new ImageManager(new Driver());
                $img = $manager->read($sourcePath);
                $img->scaleDown(1150);
                $img->save($dPath);

                // Delete old large thumbnail
                $sourcePathLarge = './uploads/blogs/thumb/large/' . $oldImageName;
                File::delete($sourcePathLarge);

                $blog->image = $newFileName;
                $blog->save();

                File::delete($sourcePath);
            }

            $request->session()->flash('success','Blog updated Successfully');

            return response()->json([
                'status' => 200,
                'message' => 'Blog updated Successfully'                                       
            ]);

        } else {
            // return errors
            return response()->json([
                'status' => 0,
                'errors' => $validator->errors()
            ]);
        }
    }

    public function delete($id, Request $request) {
        $blog = Blog::where('id',$id)->first();
        if (empty($blog)) {
            $request->session()->flash('error','Record not found');
            return response([
                'status' => 0
            ]);
        }

        $path = './uploads/blogs/thumb/small/'.$blog->image;
        File::delete($path);

        $path = './uploads/blogs/thumb/large/'.$blog->image;
        File::delete($path);

        Blog::where('id',$id)->delete();

        $request->session()->flash('success','Blog deleted successfully.');

        return response([
            'status' => 1
        ]);
    }


    public function getSlug(Request $request){
        $slug = SlugService::createSlug(Blog::class, 'slug', $request->name);
        return response()->json([
            'status' => true,
            'slug' => $slug
        ]);
    }

    public function removeMainImage(Request $request, $id)
    {
        // Find the service by ID
        $blog = Blog::findOrFail($id);
        $imageName = $request->input('image');

        // Check if the image exists in the database
        if ($blog->image === $imageName) {
            // Define paths for large and small images
            $largeImagePath = public_path('uploads/blogs/thumb/large/' . $imageName);
            $smallImagePath = public_path('uploads/blogs/thumb/small/' . $imageName);

            // Delete the image files from storage
            if (file_exists($largeImagePath)) {
                unlink($largeImagePath);
            }
            if (file_exists($smallImagePath)) {
                unlink($smallImagePath);
            }

            // Set the image field in the database to null
            $blog->image = null;

            // Save the service instance
            if ($blog->save()) {
                return response()->json(['status' => 200, 'message' => 'Main image removed successfully']);
            } else {
                return response()->json(['status' => 500, 'message' => 'Failed to remove image from the database']);
            }
        }

        return response()->json(['status' => 400, 'message' => 'Image not found']);
    }
}
