$(document).ready(function() {
    $('.o-chameleonSlider').slick({
        arrows: false,
        draggable: false,
        dots: true,
        infinite: false,
        autoplay: false,
        adaptiveHeight: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        dotsClass: 'js-chameleon__navigation'
    });
});