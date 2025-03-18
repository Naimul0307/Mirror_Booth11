
$(document).ready(function(){
    $('.services-slider').slick({
        dots: false,
        infinite: true,
        speed: 300,
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,  // Enable autoplay
        autoplaySpeed: 2000,  // Set autoplay speed (2 seconds)
        prevArrow:"<a href='javscript:void(0);' type='button' class='slick-prev pull-left'></a>",
        nextArrow:"<a href='javscript:void(0);' type='button' class='slick-next pull-right'></a>",
        responsive: [
          {
            breakpoint: 1024,
            settings: {
              slidesToShow: 4,
              slidesToScroll: 1,
              infinite: true,
              dots: true
            }
          },
          {
            breakpoint: 600,
            settings: {
              slidesToShow: 2,
              slidesToScroll: 1
            }
          },
          {
            breakpoint: 480,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1
            }
          }
        ]
      });
});
