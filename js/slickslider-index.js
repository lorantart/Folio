$(document).ready(function() {
    $('.o-categorySlider').slick({
        arrows: false,
        dots: false,
        infinite: false,
        autoplay: false,
        slidesToShow: 2,
        slidesToScroll: 1,
        responsive: [{
            breakpoint: 1024,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: false,
                dots: true,
                dotsClass: 'js-slick__navigation'
            }
            },]
    });
});