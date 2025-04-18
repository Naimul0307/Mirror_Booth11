@extends('layouts.app')

@section('content')
<section class="section-3 py-5">
</section>

<section class="section-8 py-5">
    <div class="container py-2">
        <div class="row">
            <div class="container py-2">
                <div class="about-block text-center text-md-left">
                    <h1 class="title-color">{{ $blog->name }}</h1>
                    <div class="divider-container">
                        <div class="divider mb-3"></div>
                    </div>
                </div>
            </div>

            @if(!empty($blog->image))
            <div class="mt-2">
                <img src="{{ asset('uploads/blogs/thumb/large/'.$blog->image) }}" alt="{{ $blog->ima }}" class="w-100">
            </div>
            @endif
    
            <div class="mt-5">
                {!! $blog->description !!}
            </div>
    
        </div>
    </div>
</section>

@include('common.review')


@include('common.company')


@endsection
