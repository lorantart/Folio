// 01. MOODBOARD
// 02. PROCESS

$(document).ready(function() {
    // 01. MOODBOARD
    $('.o-imageGallerySlider--moodboard').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.o-imageGallerySlider__navigation--moodboard',
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

    $('.o-imageGallerySlider__navigation--moodboard').slick({
        arrows: false,
        dots: false,
        adaptiveHeight: false,
        infinite: false,
        autoplay: false,
        slidesToShow: 5,
        slidesToScroll: 5,
        asNavFor: '.o-imageGallerySlider--moodboard',
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




    // 02. PROCESS
    $('.o-imageGallerySlider--process').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.o-imageGallerySlider__navigation--process',
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

    $('.o-imageGallerySlider__navigation--process').slick({
        arrows: false,
        dots: false,
        adaptiveHeight: false,
        infinite: false,
        autoplay: false,
        slidesToShow: 8,
        slidesToScroll: 8,
        asNavFor: '.o-imageGallerySlider--process',
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