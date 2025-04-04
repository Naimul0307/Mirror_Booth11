<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $meta_title ?? 'Default Title' }}</title>
    <meta name="description" content="{{ $meta_description ?? 'Default description' }}">
    <meta name="keywords" content="{{ $meta_keywords ?? 'Default, Keywords' }}">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/navebar.css') }}">
    <link rel="shortcut icon" href="{{ asset('assets/favicon.ico')}}" type="image/x-icon">
    <meta name="_token" content="{{ csrf_token() }}">
</head>
<body>
    <header>
        <!-- Desktop Navbar -->
        <nav class="desktop-nav">
            <ul class='nav-bar'>
                <li class='logo'><a href="{{ url('/') }}"><img src='{{ asset("assets/images/logo.png") }}' alt='Logo'/></a></li>
                <ul class="menu">
                    <li><a href="{{ url('/') }}">Home</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle">Services <i class="fas fa-caret-down"></i></a>
                        <ul class="dropdown-menu">
                            @if (!empty(getCategories()))
                            @foreach (getCategories() as $category)
                            <li><a class="dropdown-item" href="{{ route('categories.index', ['slug' => $category->slug]) }}">{{ $category->name }}</a></li>
                            @endforeach
                            <li><a class="dropdown-item" href="{{ route('services') }}">View All</a></li>
                            @endif
                        </ul>
                    </li>
                    <li><a href="{{ url('/contact')}}">Contact</a></li>
                </ul>
            </ul>
        </nav>

        <!-- Mobile Navbar -->
        <nav class="mobile-nav">
            <ul class='nav-bar'>
                <!-- Logo for Mobile View -->
                <li class='logo'>
                    <a href="{{ url('/') }}"><img src='{{ asset("assets/images/logo.png") }}' alt='Logo'/></a>
                </li>
                <!-- Menu Toggle Button -->
                <div class="menu-toggle" id="menu-toggle">
                    <i class="fas fa-bars"></i>
                </div>
                <div class="close-menu" id="close-menu">
                    <i class="fas fa-times"></i>
                </div>
            </ul>
            <ul class="menu" id="menu">
                <li><a href="{{ url('/') }}">Home</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle">Services <i class="fas fa-caret-down"></i></a>
                    <ul class="dropdown-menu">
                        @if(!empty(getCategories()))
                        @foreach (getCategories() as $category)
                        <li><a class="dropdown-item" href="{{ route('categories.index', ['slug' => $category->slug]) }}">{{ $category->name }}</a></li>
                        @endforeach
                        <li><a class="dropdown-item" href="{{ route('services') }}">View All</a></li>
                        @endif
                    </ul>
                </li>
                <li><a href="{{ url('/contact')}}">Contact</a></li>
            </ul>
        </nav>

    </header>

       <!-- WhatsApp Button -->
       <a href="https://wa.me/971502664501?text=Hello%20there!" class="whatsapp-button" target="_blank">
        <img src="https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg" alt="WhatsApp Logo">
        Chat with us
       </a>

    <main>
        @yield('content')
    </main>

    <footer class="footer section gray-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="widget mb-5 mb-lg-0">
                        <h4 class="text-capitalize mb-3">Services</h4>
                        <ul class="list-unstyled footer-menu lh-35">
                            @if(!empty(getCategories()))
                            @foreach (getCategories() as $category)
                            <li><a class="dropdown-item" href="{{ route('categories.index', ['slug' => $category->slug]) }}">{{ $category->name }}</a></li>
                            @endforeach
                            <li><a class="dropdown-item"  href="{{ route('services') }}">View All</a></li>
                            @endif
                        </ul>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="widget mb-5 mb-lg-0">
                        <h4 class="text-capitalize mb-3">Quick Links</h4>
                        <ul class="list-unstyled footer-menu lh-35">
                            <li><a href="{{url('/contact')}}">Contact</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="widget widget-contact mb-5 mb-lg-0">
                        <h4 class="text-capitalize mb-3">Get in Touch</h4>
                        <div class="footer-contact-block mb-4">

                            <h4 class="mt-2">
                                @if(!empty(getSettings()) && getSettings()->email != '')
                                <i class="fa-solid fa-envelope"></i>
                                <a href="mailto:{{ getSettings()->email }}">{{ getSettings()->email }}</a>
                                @endif

                            </h4>

                            <h4 class="mt-2">
                                @if(!empty(getSettings()) && getSettings()->phone != '')
                                <i class="fa-solid fa-phone-square" aria-hidden="true"></i>
                                <a href="tel:{{getSettings()->phone}}">{{getSettings()->phone}}</a>
                                @endif
                            </h4>
                        </div>

                        <div class="footer-contact-block">

                            <ul class="list-inline footer-socials mt-4">
                                @if(!empty(getSettings()) && getSettings()->facebook_url != '')
                                <li class="list-inline-item">
                                    <a target="_blank" href="{{ getSettings()->facebook_url }}">
                                        <i class="fa-brands fa-facebook-f"></i>
                                    </a>
                                </li>
                                @endif

                                @if(!empty(getSettings()) && getSettings()->twitter_url != '')
                                <li class="list-inline-item">
                                    <a target="_blank" href="{{ getSettings()->twitter_url }}"><i class="fa-brands fa-twitter"></i></a>
                                </li>
                                @endif

                                @if(!empty(getSettings()) && getSettings()->instagram_url != '')
                                <li class="list-inline-item">
                                    <a target="_blank" href="{{ getSettings()->instagram_url }}">
                                        <i class="fa-brands fa-instagram"></i>
                                    </a>
                                </li>
                                @endif

                                @if(!empty(getSettings()) && getSettings()->whatsapp_url != '')
                                <li class="list-inline-item">
                                    <a target="_blank" href="{{ getSettings()->whatsapp_url }}"><i class="fa-brands fa-whatsapp"></i></a>
                                </li>
                                @endif

                                @if(!empty(getSettings()) && getSettings()->tiktok_url != '')
                                <li class="list-inline-item">
                                    <a target="_blank" href="{{ getSettings()->tiktok_url }}"><i class="fa-brands fa-tiktok"></i></a>
                                </li>
                                @endif

                                @if(!empty(getSettings()) && getSettings()->linkedin_url!= '')
                                <li class="list-inline-item">
                                    <a target="_blank" href="{{ getSettings()->linkedin_url }}">
                                        <i class="fa-brands fa-linkedin"></i>
                                    </a>
                                </li>
                                @endif

                                @if(!empty(getSettings()) && getSettings()->youtube_url != '')
                                <li class="list-inline-item">
                                    <a target="_blank" href="{{ getSettings()->youtube_url }}">
                                        <i class="fa-brands fa-youtube"></i>
                                    </a>
                                </li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-btm py-4 mt-5">
                <div class="row align-items-center justify-content-between">
                    <div class="col-lg-6">
                        <div class="copyright">
                            @if (!empty(getSettings()) && getSettings()->copy != '')
                            <a href="www.linkedin.com/in/naimulalambd"  class="custom-link">{{ getSettings()->copy }}</a>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <a class="backtop scroll-top-to reveal" href="#top">
                            <i class="icofont-long-arrow-up"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>
<script src="{{ asset('assets/js/jquery-3.6.0.min.js') }}"></script>
<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="{{ asset('assets/js/custom.js') }}"></script>
<script src="{{ asset('assets/js/disableRightClick.js') }}"></script>
</html>

<script>
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
    }
});
</script>

<script>
const menuToggle = document.getElementById('menu-toggle');
const closeMenu = document.getElementById('close-menu');
const menu = document.getElementById('menu');

menuToggle.addEventListener('click', () => {
    console.log("Menu toggle clicked"); // Debugging
    menu.classList.add('show-menu');
    menuToggle.style.display = 'none';
    closeMenu.style.display = 'block';
});

closeMenu.addEventListener('click', () => {
    console.log("Close menu clicked"); // Debugging
    menu.classList.remove('show-menu');
    menuToggle.style.display = 'block';
    closeMenu.style.display = 'none';
});


document.addEventListener('DOMContentLoaded', function() {
    const desktopNav = document.querySelector('.desktop-nav .nav-bar');
    const mobileNav = document.querySelector('.mobile-nav .nav-bar');
    const mobileMenu = document.getElementById('menu');
    const menuToggle = document.getElementById('menu-toggle');
    const closeMenu = document.getElementById('close-menu');

    window.addEventListener('scroll', function() {
        const currentScroll = window.scrollY;

        if (currentScroll > 50) { // Adjust scroll threshold as needed
            if (desktopNav) {
                desktopNav.classList.add('scrolled');
            }
            if (mobileNav) {
                mobileNav.classList.add('scrolled');
            }
        } else {
            if (desktopNav) {
                desktopNav.classList.remove('scrolled');
            }
            if (mobileNav) {
                mobileNav.classList.remove('scrolled');
            }
        }
    });

    menuToggle.addEventListener('click', function() {
        mobileMenu.classList.add('show-menu');
        closeMenu.style.display = 'block'; // Show close button
        menuToggle.style.display = 'none'; // Hide toggle button
    });

    closeMenu.addEventListener('click', function() {
        mobileMenu.classList.remove('show-menu');
        closeMenu.style.display = 'none'; // Hide close button
        menuToggle.style.display = 'block'; // Show toggle button
    });
});

// Select all dropdown toggles
document.querySelectorAll('.dropdown-toggle').forEach(function (dropdownToggle) {
    // Add click event listener to each dropdown toggle
    dropdownToggle.addEventListener('click', function (e) {
        e.preventDefault(); // Prevent default link behavior
        const dropdownMenu = this.nextElementSibling;

        // Close any open dropdowns before opening a new one
        document.querySelectorAll('.dropdown-menu').forEach(function (menu) {
            if (menu !== dropdownMenu) {
                menu.classList.remove('show');
            }
        });

        // Toggle the dropdown menu visibility
        dropdownMenu.classList.toggle('show');
    });
});

// Close the dropdown when clicking outside
document.addEventListener('click', function (e) {
    // If click is outside the dropdown, close all open dropdowns
    if (!e.target.closest('.dropdown')) {
        document.querySelectorAll('.dropdown-menu').forEach(function (menu) {
            menu.classList.remove('show');
        });
    }
});

</script>
@yield('extraJs')
