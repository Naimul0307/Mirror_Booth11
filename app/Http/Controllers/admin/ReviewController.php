<?php

namespace App\Http\Controllers\admin;

use App\Exports\ServicesExport;
use App\Http\Controllers\Controller;
use App\Models\Review;
use App\Models\TempFile;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class ReviewController extends Controller
{
    public function index(Request $request)
    {
        $reviews = Review::orderBy('created_at','ASC');

        if (!empty($request->keyword)) {
            $reviews = $categorreviewsies->where('name','like','%'.$request->keyword.'%');
        }

        $reviews = $reviews->paginate(20);

        $data['reviews'] = $reviews;
        return view('admin.review.list',$data);
    }

    public function create() {
        $reviews = Review::orderBy('name','ASC')->get();
        $data['reviews'] = $reviews;
        return view('admin.review.create',$data);
    }

    public function save(Request $request) {
        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:reviews',
            'rating' => 'required|integer|min:1|max:5',
        ]);

        if($validator->passes()) {
            // Form validated successfully

            $review = new Review;
            $review->name = $request->name;
            $review->review_text = $request->dreview_textescription;
            $review->rating = $request->rating;
            $review->review_date = $request->review_date;
            $review->save();

            if ($request->image_id > 0) {
                $tempImage = TempFile::where('id',$request->image_id)->first();
                $tempFileName = $tempImage->name;
                $imageArray = explode('.',$tempFileName);
                $ext = end($imageArray);

                $newFileName = 'review-'.$review->id.'.'.$ext;

                $sourcePath = './uploads/temp/'.$tempFileName;

                // Generate Small Thumbnail
                $dPath = './uploads/review/thumb/small/'.$newFileName;
                $manager = new ImageManager(new Driver());
                $img = $manager->read($sourcePath);
                $img->cover(360,220);
                $img->save($dPath);

                // Generate Large Thumbnail
                $dPath = './uploads/review/thumb/large/'.$newFileName;
                $manager = new ImageManager(new Driver());
                $img = $manager->read($sourcePath);
                $img->scaleDown(1150);
                // $img->resize(1150, null, function ($constraint) {
                //     $constraint->aspectRatio();
                // });
                $img->save($dPath);

                $review->image = $newFileName;
                $review->save();

                File::delete($sourcePath);

            }

            $request->session()->flash('success','Review Created Successfully');

            return response()->json([
                'status' => 200,
                'message' => 'Review Created Successfully'
            ]);

        } else {
            // return errors
            return response()->json([
                'status' => 0,
                'errors' => $validator->errors()
            ]);
        }
    }

    public function edit(Request $request, $id)
    {
        $review = Review::where('id', $id)->first();

        if (empty($review)) {
            $request->session()->flash('error', 'Record not found in DB');
            return redirect()->route('reviewList');
        }

        // Format the review_date to 'YYYY-MM-DD' if it's not null
        if ($review->review_date) {
            $review->review_date = Carbon::parse($review->review_date)->format('Y-m-d');
        }

        $data['review'] = $review;
        return view('admin.review.edit', $data);
    }


    public function update($id, Request $request) {
        $review = Review::find($id);

        // Validation logic
        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:reviews,name,' . $review->id . ',id',
            'rating' => 'required|integer|min:1|max:5',
        ]);


        if ($validator->passes()) {
            // Check if service exists
            if (empty($review)) {
                $request->session()->flash('error', 'Record not found');
                return response()->json([
                    'status' => 0,
                ]);
            }

            $oldImageName = $review->image;

            $review->name = $request->name;
            $review->review_text = $request->dreview_textescription;
            $review->rating = $request->rating;
            $review->review_date = $request->review_date;
            $review->save();

            // Handle the main image update
            if ($request->image_id > 0) {
                $tempImage = TempFile::where('id', $request->image_id)->first();
                $tempFileName = $tempImage->name;
                $imageArray = explode('.', $tempFileName);
                $ext = end($imageArray);

                $newFileName = 'review-' . strtotime('now') . '-' . $review->id . '.' . $ext;

                $sourcePath = './uploads/temp/' . $tempFileName;

                // Generate Small Thumbnail
                $dPath = './uploads/review/thumb/small/' . $newFileName;
                $manager = new ImageManager(new Driver());
                $img = $manager->read($sourcePath);
                $img->cover(360,220);
                $img->save($dPath);

                // Delete old small thumbnail
                $sourcePathSmall = './uploads/review/thumb/small/' . $oldImageName;
                File::delete($sourcePathSmall);

                // Generate Large Thumbnail
                $dPath = './uploads/services/thumb/large/' . $newFileName;
                $manager = new ImageManager(new Driver());
                $img = $manager->read($sourcePath);
                $img->scaleDown(1150);
                // $img->resize(1150, null, function ($constraint) {
                //     $constraint->aspectRatio();
                // });
                $img->save($dPath);

                // Delete old large thumbnail
                $sourcePathLarge = './uploads/services/review/large/' . $oldImageName;
                File::delete($sourcePathLarge);

                $review->image = $newFileName;
                $review->save();

                File::delete($sourcePath);
            }

            $request->session()->flash('success', 'Review updated Successfully');

            return redirect()->route('reviewList'); // Redirect to service list route

            return response()->json([
                'status' => 200,
                'message' => 'Review Updated Successfully'
            ]);

        } else {
            // Return validation errors
            return response()->json([
                'status' => 0,
                'errors' => $validator->errors()
            ]);
        }
    }

    public function removeMainImage(Request $request, $id)
    {
        // Find the service by ID
        $review = Review::findOrFail($id);
        $imageName = $request->input('image');

        // Check if the image exists in the database
        if ($review->image === $imageName) {
            // Define paths for large and small images
            $largeImagePath = public_path('uploads/review/thumb/large/' . $imageName);
            $smallImagePath = public_path('uploads/review/thumb/small/' . $imageName);

            // Delete the image files from storage
            if (file_exists($largeImagePath)) {
                unlink($largeImagePath);
            }
            if (file_exists($smallImagePath)) {
                unlink($smallImagePath);
            }

            // Set the image field in the database to null
            $review->image = null;

            // Save the service instance
            if ($review->save()) {
                return response()->json(['status' => 200, 'message' => 'Main image removed successfully']);
            } else {
                return response()->json(['status' => 500, 'message' => 'Failed to remove image from the database']);
            }
        }

        return response()->json(['status' => 400, 'message' => 'Image not found']);
    }


     public function delete($id, Request $request) {

        $review = Review::where('id',$id)->first();

        if (empty($review)) {

            $review->session()->flash('error','Record not found');

            return response([
                'status' => 0
            ]);
        }

        $path = './uploads/review/thumb/small/'.$review->image;
        File::delete($path);

        $path = './uploads/review/thumb/large/'.$review->image;
        File::delete($path);

        Review::where('id',$id)->delete();

        $request->session()->flash('success','Review deleted successfully.');

        return response([
            'status' => 1
        ]);
    }
}
