<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\TempFile;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\File;

class DashboardController extends Controller
{
    //This method will dasgboard page for admin
    public function index(){

        $dayBeforeToday = Carbon::now()->subDays(1)->format('Y-m-d');

        //delete temp image
        $tempFiles = TempFile::where('created_at','<=',$dayBeforeToday)->get();

        foreach($tempFiles as $tempFile){
            $path = public_path('/uploads/temp'.$tempFile->name);
            if(File::exists($path)){
                File::delete($path);
            }
            TempFile::where('id',$tempFile->id)->delete();
        }
        return view('admin.dashboard');
    }
}
