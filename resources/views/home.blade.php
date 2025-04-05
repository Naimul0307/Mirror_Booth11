@extends('layouts.app')

@section('content')

<section class="hero">
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <video autoplay muted loop playsinline src="{{ asset('assets/images/video/videos1.mp4') }}" type="video/mp4" async></video>
                <div class="hero-background-overlay"></div>
                <div class="container">
                    <div class="row align-items-center justify-content-center h-100">
                        <div class="col-md-7 text-center">
                            <div class="block">
                                <h1 class="mb-3 mt-3">PHOTOBOOTH INTERACTIVE ENTERTAINMENT EXPERIENCES</h1>
                                <div class="btn-container">
                                    <a href="{{ route('contact') }}" class="btn btn-primary">Contact Now <i class="icofont-simple-right ml-2"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section-2 py-5">
    <div class="container py-2">
        <div class="about-block">
            <h2 class="title-color">MIRROR BOOTH EVENT</h2>
            <div class="divider-container">
                <div class="divider mb-3"></div>
            </div>
            <div class="text-muted">Award Winning Interactive Photo Booth Services In Dubai</div>
            <p>A professional and a well-experienced photobooth supplier in the UAE. We deliver client satisfaction and event perfection in all of our services.
            <br>Our goal is to make memorable and meaningful event for everyone.</p>
        </div>
    </div>
</section>


@include('common.services')

@include('common.review')

@include('common.company')

@endsection

