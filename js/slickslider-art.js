$(document).ready(function() {
    $('.o-projectSlider').slick({
    arrows: false,
    dots: false,
    infinite: false,
    autoplay: false,
    adaptiveHeight: false,
    slidesToShow: 3,
    slidesToScroll: 1,
    responsive: [
        {
            breakpoint: 1600,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,
                infinite: true,
                dots: true,
                dotsClass: 'js-slick__navigation'
            }
        },

        {
            breakpoint: 1024,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
                centerMode: true,
                centerPadding: '20px',
                infinite: true,
                dots: true,
                dotsClass: 'js-slick__navigation'
            }
        },
    ]
    });
});