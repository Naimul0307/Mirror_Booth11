@extends('layouts.app')

@section('content')

<section class="section-3 py-5">
</section>
<section class="section-2 py-5">
    <div class="container py-2">
        <div class="about-block">
            <h1 class="title-color text-center">MIRROR BOOTH DUBAI</h1>
            <div class="divider-container text-center">
                <div class="divider mb-3"></div>
            </div>
            @if(!empty($category))
            <div class="mt-2 mb-3 text-muted">{{ $category->name }} Rental Dubai</div>
            @endif
            <div class="mt-2 mb-3 text-muted">Award Winning Interactive Photo Booth Services In Dubai</div>
            <p>A professional and a well-experienced photobooth supplier in the UAE. We deliver client satisfaction and event perfection in all of our services. Our goal is to make memorable and meaningful event for everyone.</p>
        </div>
    </div>
</section>

<section class="section-3 py-5">
    <div class="container">
        <div class="cards">
           <div class="row">
                @if(!empty($services))
                @foreach ($services as $service)

                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="card border-0 text-center">
                        @if(!empty($service->image))
                        <img src="{{ asset('uploads/services/thumb/small/'.$service->image) }}" class="card-img-top" alt="">
                        @else
                        <img src="{{ asset('uploads/placeholder.jpg') }}" class="card-img-top" alt="">
                        @endif
                        <div class="card-body p-3">
                            <h1 class="card-title mt-2"><a href="{{ url('/services/detail/'.$service->id) }}">{{ $service->name }}</a></h1>
                            <div class="content pt-2">
                                <p class="card-text">{{ $service->short_desc }}</p>
                            </div>
                            <a href="{{ url('/services/detail/'.$service->id) }}" class="btn btn-primary mt-4">Learn More <i class="fa-solid fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                @endforeach
                @endif
           </div>
        </div>
    </div>
</section>

@include('common.company')

@endsection
