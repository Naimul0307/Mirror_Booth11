<?php

use App\Http\Controllers\admin\BlogController as AdminBlogController;
use App\Http\Controllers\admin\CategoryController;
use App\Http\Controllers\admin\DashboardController as AdminDashboardController;
use App\Http\Controllers\admin\ReviewController as AdminReviewController;
use App\Http\Controllers\Admin\FaqController as AdminFaqController;
use App\Http\Controllers\admin\LoginController as AdminLoginController;
use App\Http\Controllers\admin\PageController;
use App\Http\Controllers\admin\ServiceController;
use App\Http\Controllers\admin\SettingsController;
use App\Http\Controllers\admin\TempImageController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\FaqController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\ReviewController;
use App\Http\Controllers\ServicesController;
use Illuminate\Support\Facades\Route;


Route::get('/',[HomeController::class,'index']);
Route::get('/about-us',[ HomeController::class, 'about' ])->name('about');
Route::get('/terms',[ HomeController::class, 'terms' ])->name('terms');
Route::get('/privacy',[ HomeController::class, 'privacy' ])->name('privacy');
Route::get('/services',[ ServicesController::class, 'index' ])->name('services');
Route::get('/services/detail/{id}',[ ServicesController::class, 'detail' ]);
Route::get('/category/{id}',[CategoriesController::class, 'index'])->name('categories.index');

Route::get('/faq',[ FaqController::class, 'index' ]);
Route::get('/blog',[ BlogController::class, 'index' ])->name('blog.front');
Route::get('/blog/{id}',[ BlogController::class, 'detail' ])->name('blog-detail');
Route::post('/save-comment',[ BlogController::class, 'saveComment' ])->name('save.blog');
Route::get('/contact',[ ContactController::class, 'index' ])->name('contact');
Route::post('/send-email',[ ContactController::class, 'sendEmail' ])->name('sendContactEmail');

Route::get('/reviews', [ReviewController::class, 'index'])->name('reviews');


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

        //category route
        Route::get('/category',[CategoryController::class,'index'])->name('categoryList');
        Route::get('/category/create',[CategoryController::class,'create'])->name('category.create');
        Route::post('/category/create',[CategoryController::class,'store'])->name('category.save');
        Route::get('/category/edit/{id}',[CategoryController::class,'edit'])->name('category.edit');
        Route::post('/category/edit/{id}',[CategoryController::class,'update'])->name('category.update');
        Route::post('/category/delete/{id}',[CategoryController::class,'delete'])->name('category.delete');

        // Blog Routes
        Route::get('/blog/create',[AdminBlogController::class,'create'])->name('blog.create.form');
        Route::post('/blog/create',[AdminBlogController::class,'save'])->name('blog.save');
        Route::get('/blog',[AdminBlogController::class,'index'])->name('blogList');
        Route::get('/blog/edit/{id}',[AdminBlogController::class,'edit'])->name('blog.edit');
        Route::post('/blog/edit/{id}',[AdminBlogController::class,'update'])->name('blog.update');
        Route::post('/blog/delete/{id}',[AdminBlogController::class,'delete'])->name('blog.delete');

        Route::get('/blog/get-slug',[AdminBlogController::class,'getSlug'])->name('blog.slug');

        // Faq Routes
        Route::get('/faq',[AdminFaqController::class,'index'])->name('faqList');
        Route::get('/faq/create',[AdminFaqController::class,'create'])->name('faq.create.form');
        Route::post('/faq/save',[AdminFaqController::class,'save'])->name('faq.save');
        Route::get('/faq/edit/{id}',[AdminFaqController::class,'edit'])->name('faq.edit');
        Route::post('/faq/edit/{id}',[AdminFaqController::class,'update'])->name('faq.update');
        Route::post('/faq/delete/{id}',[AdminFaqController::class,'delete'])->name('faq.delete');

        // Page Routes

        Route::get('/page/create',[PageController::class,'create'])->name('page.create.form');
        Route::post('/page/create',[PageController::class,'save'])->name('page.save');
        Route::get('/pages',[PageController::class,'index'])->name('pageList');
        Route::get('/page/edit/{id}',[PageController::class,'edit'])->name('page.edit');
        Route::post('/page/edit/{id}',[PageController::class,'update'])->name('page.update');
        Route::post('/page/delete/{id}',[PageController::class,'delete'])->name('page.delete');

        Route::post('/page/deleteImage',[PageController::class,'deleteImage'])->name('page.deleteImage');

        // Setting Routes
        Route::get('/settings',[SettingsController::class,'index'])->name('settings.index');
        Route::post('/settings',[SettingsController::class,'save'])->name('settings.save');

        //Review Routes
        Route::get('/reviews',[AdminReviewController::class,'index'])->name('reviewList');
        Route::get('/reviews/create', [AdminReviewController::class, 'create'])->name('reviews.create.from');
        Route::post('/reviews/create',[AdminReviewController::class,'save'])->name('reviews.create');

        Route::get('/reviews/edit/{id}',[AdminReviewController::class,'edit'])->name('reviews.edit');
        Route::post('/reviews/edit/{id}',[AdminReviewController::class,'update'])->name('reviews.update');
        Route::post('/reviews/delete/{id}',[AdminReviewController::class,'delete'])->name('reviews.delete');
        Route::post('/reviews/{id}/remove-image', [AdminReviewController::class, 'removeMainImage'])->name('reviews.remove.image');
    });
});

