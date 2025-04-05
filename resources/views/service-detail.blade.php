@extends('layouts.app')

@section('content')
<section class="section-3 py-5">
</section>

<section class="section-8 py-5">
    <div class="container py-2">
        <div class="row">
            <div class="container py-2">
                <div class="about-block text-center text-md-left">
                    <h1 class="title-color">{{ $service->name }}</h1>
                    <div class="divider-container">
                        <div class="divider mb-3"></div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-12">
                @if(!empty($service->videos_link))
                    @php
                        // Extract video ID from the YouTube link
                        $url = $service->videos_link;
                        $videoId = null;

                        if (preg_match('/(?:youtube\.com\/(?:[^\/\n\s]+\/\S+\/|(?:v|e(?:mbed)?)\/|\S*?[?&]v=)|youtu\.be\/)([a-zA-Z0-9_-]{11})/', $url, $matches)) {
                            $videoId = $matches[1];
                        }
                    @endphp

                    @if(!(empty($videoId)))
                    <div class="image-red-background">
                        <iframe class="responsive-iframe" src="https://www.youtube.com/embed/{{ $videoId }}" frameborder="0" allowfullscreen></iframe>
                    </div>
                    @else
                    <div class="image-red-background">
                        <img src="{{ asset('uploads/services/thumb/large/'.$service->image) }}" class="w-100">
                    </div>
                    @endif
                @endif
            </div>

            <div class="col-md-6 col-12 d-flex align-items-center">
                <div class="about-block text-center text-md-left">
                    {!! $service->description !!}
                </div>
            </div>
        </div>
    </div>
</section>

@if(!empty($additional_videos_links) && is_array($additional_videos_links) && count($additional_videos_links) > 0)
    <section class="section-6 py-5">
        <div class="container">
            <div class="cards">
                <div class="row justify-content-center">
                    @foreach ($additional_videos_links as $link)
                        @php
                            // Extract video ID from the additional YouTube link
                            $videoUrl = $link;
                            $additionalVideoId = null;

                            if (preg_match('/(?:youtube\.com\/(?:[^\/\n\s]+\/\S+\/|(?:v|e(?:mbed)?)\/|\S*?[?&]v=)|youtu\.be\/)([a-zA-Z0-9_-]{11})/', $videoUrl, $matches)) {
                                $additionalVideoId = $matches[1];
                            }
                        @endphp

                        @if(!empty($additionalVideoId))
                            <div class="col-md-4 col-sm-6 mb-4 d-flex justify-content-center">
                                <div class="card border-0">
                                    <iframe class="responsive-iframe" src="https://www.youtube.com/embed/{{ $additionalVideoId }}" frameborder="0" allowfullscreen></iframe>
                                </div>
                            </div>
                        @endif
                    @endforeach
                </div>
            </div>
        </div>
    </section>
@endif

@if(!empty($gallery_images) && count($gallery_images) > 0)
<section class="section-6 py-5">
    <div class="container">
        <div class="cards">
            <!-- Slider wrapper -->
            <div class="services-slider">
                @foreach ($gallery_images as $image)
                <div class="slider-item">
                    @if(!empty($image))
                    <img src="{{ asset('uploads/services/gallery/'.$image) }}" class="img-fluid" alt="{{ $service->image_alt_text ?? 'Image' }}">
                    @else
                    <img src="{{ asset('uploads/placeholder.jpg') }}" class="card-img-top" alt="Image">
                    @endif
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
