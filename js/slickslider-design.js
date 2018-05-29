$(document).ready(function() {
    $('.o-projectSlider').slick({
        arrows: false,
        dots: false,
        adaptiveHeight: true,
        infinite: false,
        autoplay: false,
        slidesToShow: 2,
        slidesToScroll: 1,
        responsive: [{
            breakpoint: 1024,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true,
                dots: true,
                dotsClass: 'js-slick__navigation'
            }
            },]
    });
});