$(document).ready(function(){
    $(".u-user-wrapper").click(function(){
        $(".c-header__popover").fadeIn(200);
    });
    
    $('html').on('touchstart', function(e) {
        $('.c-header-popover').fadeOut(200);
    })

    $(".c-header-popover").on('touchstart',function(e) {
        e.stopPropagation();
    });
});

