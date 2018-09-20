$(document).ready(function() {
    $('.o-imageGallerySlider').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.o-imageGallerySlider__navigation',
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

    $('.o-imageGallerySlider__navigation').slick({
        arrows: false,
        dots: false,
        adaptiveHeight: false,
        infinite: false,
        autoplay: false,
        slidesToShow: 5,
        slidesToScroll: 5,
        asNavFor: '.o-imageGallerySlider',
        focusOnSelect: true,
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