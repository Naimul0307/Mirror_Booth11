<?php

use App\Http\Controllers\admin\AdminBlogsController;
use App\Http\Controllers\admin\CategoryController;
use App\Http\Controllers\admin\DashboardController as AdminDashboardController;
use App\Http\Controllers\admin\LoginController as AdminLoginController;
use App\Http\Controllers\admin\ServiceController;
use App\Http\Controllers\admin\SettingsController;
use App\Http\Controllers\admin\TempImageController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\ServicesController;
use App\Http\Controllers\SitemapController;
use Illuminate\Support\Facades\Route;





Route::get('/sitemap', [SitemapController::class, 'generate']);

Route::get('/',[HomeController::class,'index']);
Route::get('/services',[ ServicesController::class, 'index' ])->name('services');
Route::get('/service/{slug}',[ ServicesController::class, 'detail'])->name('service.detail');
Route::get('/category/{slug}', [CategoriesController::class, 'index'])->name('categories.index');
Route::get('/contact',[ ContactController::class, 'index' ])->name('contact');
Route::get('/blogs',[ BlogController::class, 'index' ])->name('blogs');
Route::get('/blog/{slug}',[ BlogController::class, 'detail' ])->name('blog.detail');

Route::post('/send-email',[ ContactController::class, 'sendEmail' ])->name('sendContactEmail');

Route::group(['prefix' => 'account'],function(){

    Route::group(['middleware' => 'guest'],function(){
        Route::get('login',[LoginController::class, 'index'])->name('account.login');
        Route::get('register',[LoginController::class, 'register'])->name('account.register');
        Route::post('process-register',[LoginController::class, 'processRegister'])->name('account.processRegister');
        Route::post('auth',[LoginController::class, 'authenticate'])->name('account.auth');
    });

    Route::group(['middleware' => 'auth'],function(){
        Route::get('logout',[LoginController::class, 'logout'])->name('account.logout');
        Route::get('dashboard',[DashboardController::class,'index'])->name('account.dashboard');
    });
});


Route::group(['prefix' => 'admin'],function(){

    Route::group(['middleware' => 'admin.guest'],function(){
        Route::get('login',[AdminLoginController::class, 'index'])->name('admin.login');
        Route::post('auth',[AdminLoginController::class, 'authenticate'])->name('admin.auth');
    });

    Route::group(['middleware' => 'admin.auth'],function(){
        Route::get('logout',[AdminLoginController::class, 'logout'])->name('admin.logout');
        Route::get('dashboard',[AdminDashboardController::class,'index'])->name('admin.dashboard');

         //service route
        Route::get('/services/create',[ServiceController::class,'create'])->name('service.create.form');
        Route::post('/services/create',[ServiceController::class,'save'])->name('service.create');
        Route::post('/temp/upload',[TempImageController::class,'upload'])->name('tempUpload');
        Route::post('/temp/uploads',[TempImageController::class,'uploadGalleryImage'])->name('uploadGalleryImage');
        Route::post('/service/{id}/remove-image', [ServiceController::class, 'removeMainImage'])->name('service.remove.image');
        Route::post('/service/{id}/remove-gallery-image', [ServiceController::class, 'removeGalleryImage'])->name('service.remove.gallery.image');
        Route::get('/services',[ServiceController::class,'index'])->name('serviceList');
        Route::get('/services/edit/{id}',[ServiceController::class,'edit'])->name('service.edit');
        Route::post('/services/edit/{id}',[ServiceController::class,'update'])->name('service.edit.update');
        Route::post('/services/delete/{id}',[ServiceController::class,'delete'])->name('service.delete');
        Route::get('/services/get-slug',[ServiceController::class,'getSlug'])->name('service.slug');

        //category route
        Route::get('/category',[CategoryController::class,'index'])->name('categoryList');
        Route::get('/category/create',[CategoryController::class,'create'])->name('category.create');
        Route::post('/category/create',[CategoryController::class,'store'])->name('category.save');
        Route::get('/category/edit/{id}',[CategoryController::class,'edit'])->name('category.edit');
        Route::post('/category/edit/{id}',[CategoryController::class,'update'])->name('category.update');
        Route::post('/category/delete/{id}',[CategoryController::class,'delete'])->name('category.delete');
        Route::get('/category/get-slug',[CategoryController::class,'getSlug'])->name('category.slug');

       // Blog Routes
       Route::get('/blog',[AdminBlogsController::class, 'index'])->name('bloglist');
       Route::get('/blogs/create',[AdminBlogsController::class,'create'])->name('blogs.create.form');
       Route::post('/blogs/create',[AdminBlogsController::class,'save'])->name('blogs.create');
       Route::get('/blogs/edit/{id}',[AdminBlogsController::class,'edit'])->name('blogs.edit');
       Route::post('/blogs/edit/{id}', [AdminBlogsController::class, 'update'])->name('blogs.update');
       Route::post('/blogs/delete/{id}',[AdminBlogsController::class,'delete'])->name('blogs.delete');
       Route::get('/blogs/get-slug',[AdminBlogsController::class,'getSlug'])->name('blogs.slug');
       Route::post('/blogs/{id}/remove-image', [AdminBlogsController::class, 'removeMainImage'])->name('blogs.remove.image');

        // Setting Routes
        Route::get('/settings',[SettingsController::class,'index'])->name('settings.index');
        Route::post('/settings',[SettingsController::class,'save'])->name('settings.save');

    });
});

