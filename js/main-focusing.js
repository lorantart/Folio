$(document).ready(function() {
    $('.js-transformGallery').click(function(){ 
        $(".js-fadingBlock").css("transform","translateX(-80vw)");
        $(".js-fadingBlock").css("filter","blur(80px)");
        $(".u-article--sliding-wrapper").css("transform","translateX(-100vw)");
    });

    $('.js-transformDescription').click(function(){ 
        $(".js-fadingBlock").css("transform","translateX(0)");
        $(".js-fadingBlock").css("filter","blur(0)");
        $(".u-article--sliding-wrapper").css("transform","translateX(0)");
    });
});