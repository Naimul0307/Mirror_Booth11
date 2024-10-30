<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
     //This method will dasgboard page for user
    public function index(){
        return view('dashboard');
    }
}
