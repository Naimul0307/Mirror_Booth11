@extends('layouts.app')

@section('content')
<section class="section-3 py-5">
</section>

<section class="hero-small">
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="hero-background-overlay"></div>
                <div class="container  h-100">
                    <div class="row align-items-center d-flex h-100">
                        <div class="col-md-12">
                            <div class="block text-center">
                                <span class="text-uppercase text-sm letter-spacing"></span>
                                <h1 class="mb-3 mt-3 text-center">CONTACT US</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="pt-5 pb-0" style="background: white">
    <div class="container contact-box" >
        <div class="row">
            <div class="col-lg-12 text-center mx-auto">
                @if (Session::has('success'))
                    <div class="alert alert-success">
                        {{ Session::get('success') }}
                    </div>
                @endif
            </div>
            <div class="col-lg-8 col-xl-6 text-center mx-auto">
                <h1 class="mb-4 text-black">We're here to help!</h1>
            </div>
        </div>

        <!-- Contact info box -->
        <div>
            @if(!empty($settings) && $settings->contact_card_one != '')
                <div>
                    {!! $settings->contact_card_one !!}
                </div>
            @endif
        </div>
    </div>

    <div class="container my-5">
        <div class="row g-4 g-lg-0 align-items-center">

            <!-- Contact form START -->
            <div class="col-md-12">
                <!-- Title -->
                <form action="" method="post" id="contactForm" name="contactForm">
                    <!-- Name -->
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-4 bg-light-input">
                                <label for="name" class="form-label">Your name *</label>
                                <input type="text" class="form-control form-control-lg" id="name" name="name">
                                <p class="name-error invalid-feedback"></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-4 bg-light-input">
                                <label for="email" class="form-label">Email address *</label>
                                <input type="text" class="form-control form-control-lg" id="email" name="email">
                                <p class="email-error invalid-feedback"></p>
                            </div>
                        </div>
                    </div>

                    <!-- Message -->
                    <div class="mb-4 bg-light-input">
                        <label for="textareaBox" class="form-label">Message *</label>
                        <textarea class="form-control" id="message" name="message" rows="4"></textarea>
                        <p class="message-error invalid-feedback"></p>
                    </div>
                    <!-- Button -->
                    <div class="d-grid">
                        <button class="btn btn-lg btn-primary mb-0" id="submit" type="submit">Send Message</button>
                    </div>
                </form>
            </div>
            <!-- Contact form END -->
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-12">
                <iframe class="w-100 h-400px grayscale rounded" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d57739.31542034597!2d55.329430203630615!3d25.24678463557677!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f5b87fb362717%3A0xb19ed1733a5679d9!2sMirror%20Booth%20Dubai!5e0!3m2!1sen!2sae!4v1725969859667!5m2!1sen!2sae" height="500" style="border:0;" aria-hidden="true" tabindex="0"></iframe>
            </div>
        </div>
    </div>
    
    @include('common.review')

    @include('common.company')
</section>

@endsection

@section('extraJs')
<script type="text/javascript">
    $("#contactForm").submit(function(event){
        event.preventDefault();
        $("#submit").prop('disabled',true);
        $.ajax({
            url: '{{ route("sendContactEmail") }}',
            type: 'post',
            data: $("#contactForm").serializeArray(),
            dataType: 'json',
            success: function(response){
                $("#submit").prop('disabled',false);

                if (response.status == 0) {
                    if (response.errors.name) {
                        $("#name").addClass('is-invalid');
                        $(".name-error").html(response.errors.name);
                    } else {
                        $(".name-error").html('');
                        $("#name").removeClass('is-invalid');
                    }

                    if (response.errors.email) {
                        $("#email").addClass('is-invalid');
                        $(".email-error").html(response.errors.email);
                    } else {
                        $(".email-error").html('');
                        $("#email").removeClass('is-invalid');
                    }

                    if (response.errors.message) {
                        $("#message").addClass('is-invalid');
                        $(".message-error").html(response.errors.message);
                    } else {
                        $(".message-error").html('');
                        $("#message").removeClass('is-invalid');
                    }
                } else {
                    window.location.href='{{ url("/contact") }}';
                }
            }
        });
    });
</script>
@endsection


