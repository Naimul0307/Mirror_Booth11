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
            <div class="mt-2 mb-3 text-muted">ALL BLOGS</div>

            <div class="mt-2 mb-3 text-muted">Award Winning Interactive Photo Booth Services In Dubai</div>
            <p>A professional and well-experienced photobooth supplier in the UAE. We deliver client satisfaction and event perfection in all of our services.
            <br>Our goal is to make memorable and meaningful events for everyone.</p>
        </div>
    </div>
</section>

@if($blogs->isNotEmpty())
    <section class="section-3 py-5">
        <div class="container">
            <div class="cards">
                <div class="row">
                    {{-- Display the first half of services --}}
                    @foreach ($blogs as $blog)
                    <div class="col-md-3 col-sm-6 mb-4">
                        <div class="card border-0 text-center">
                            @if(!empty($blog->image))
                            <img src="{{ asset('uploads/blogs/thumb/small/'.$blog->image) }}" class="card-img-top" alt="{{ $blog->image_alt_text ?? 'Image' }}">
                            @else
                            <img src="{{ asset('uploads/placeholder.jpg') }}" class="card-img-top" alt="Image">
                            @endif
                            <div class="card-body p-3">
                                <h4 class="card-title mt-2"><a href="{{ route('blog.detail', ['slug' => $blog->slug]) }}">{{ $blog->name }}</a></h4>
                                <div class="content pt-2">
                                    <p class="card-text">{{ $blog->short_desc }}</p>
                                </div>
                                <a href="{{ route('blog.detail', ['slug' => $blog->slug]) }}" class="btn btn-primary mt-4">See In Action <i class="fa-solid fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
@endif

@include('common.review')

@include('common.company')

@endsection

