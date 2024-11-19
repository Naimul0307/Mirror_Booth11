<section class="section-3 py-5">
    <div class="container">
        <h2 class="title-color mb-4 h1 text-center">PHOTO BOOTHS</h2>
        <div class="divider-container text-center">
            <div class="divider mb-3"></div>
        </div>
        <div class="cards">
            <div class="row">
                @if(!empty($limitedServices[1]))
                    @foreach ($limitedServices[1] as $service)
                        <div class="col-md-3 col-sm-4 mb-4">
                            <div class="card border-0 text-center">
                                @if(!empty($service->image))
                                    <img src="{{ asset('uploads/services/thumb/small/'.$service->image) }}" class="card-img-top" alt="">
                                @else
                                    <img src="{{ asset('uploads/placeholder.jpg') }}" class="card-img-top" alt="">
                                @endif
                                <div class="card-body p-3">
                                    <h1 class="card-title mt-2"><a href="{{ route('service.detail', ['slug' => $service->slug]) }}">{{ $service->name }}</a></h1>
                                    <div class="content pt-2">
                                        <p class="card-text">{{ $service->short_desc }}</p>
                                    </div>
                                    <a href="{{ route('service.detail', ['slug' => $service->slug]) }}" class="btn btn-primary mt-4">See In Action <i class="fa-solid fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
        <div class="text-center mt-4">
            <a href="{{ url('/category/photo-booths-dubai') }}" class="btn btn-primary">SEE MORE PHOTO BOOTHS</a>
        </div>
    </div>
</section>

<section class="section-3 py-5">
    <div class="container">
        <h2 class="title-color mb-4 h1 text-center">VIDEO BOOTHS</h2>
        <div class="divider-container text-center">
            <div class="divider mb-3"></div>
        </div>
        <div class="cards">
            <div class="row">
                @if(!empty($limitedServices[3]))
                    @foreach ($limitedServices[3] as $service)
                        <div class="col-md-3 col-sm-6 mb-4">
                            <div class="card border-0 text-center">
                                @if(!empty($service->image))
                                    <img src="{{ asset('uploads/services/thumb/small/'.$service->image) }}" class="card-img-top" alt="">
                                @else
                                    <img src="{{ asset('uploads/placeholder.jpg') }}" class="card-img-top" alt="">
                                @endif
                                <div class="card-body p-3">
                                    <h1 class="card-title mt-2"><a href="{{ route('service.detail', ['slug' => $service->slug]) }}">{{ $service->name }}</a></h1>
                                    <div class="content pt-2">
                                        <p class="card-text">{{ $service->short_desc }}</p>
                                    </div>
                                    <a href="{{ route('service.detail', ['slug' => $service->slug]) }}" class="btn btn-primary mt-4">See In Action <i class="fa-solid fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
        <div class="text-center mt-4">
            <a href="{{ url('/category/video-booths-dubai') }}" class="btn btn-primary">SEE MORE VIDEO BOOTHS</a>
        </div>
    </div>
</section>

<section class="section-3 py-5">
    <div class="container">
        <h2 class="title-color mb-4 h1 text-center">GAMES & INTERACTIVES</h2>
        <div class="divider-container text-center">
            <div class="divider mb-3"></div>
        </div>
        <div class="cards">
            <div class="row">
                @if(!empty($limitedServices[2]))
                    @foreach ($limitedServices[2] as $service)
                        <div class="col-md-3 col-sm-6 mb-4">
                            <div class="card border-0 text-center">
                                @if(!empty($service->image))
                                    <img src="{{ asset('uploads/services/thumb/small/'.$service->image) }}" class="card-img-top" alt="">
                                @else
                                    <img src="{{ asset('uploads/placeholder.jpg') }}" class="card-img-top" alt="">
                                @endif
                                <div class="card-body p-3">
                                    <h1 class="card-title mt-2"><a href="{{ route('service.detail', ['slug' => $service->slug]) }}">{{ $service->name }}</a></h1>
                                    <div class="content pt-2">
                                        <p class="card-text">{{ $service->short_desc }}</p>
                                    </div>
                                    <a href="{{ route('service.detail', ['slug' => $service->slug]) }}" class="btn btn-primary mt-4">See In Action <i class="fa-solid fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
        <div class="text-center mt-4">
            <a href="{{ url('/category/games-interactives') }}" class="btn btn-primary">SEE MORE GAMES & INTERACTIVES</a>
        </div>
    </div>
</section>

