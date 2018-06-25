$(document).mousemove(function(e){
    var $width = ($(document).width())/255;
    var $height = ($(document).height())/255;
    var $pageX = parseInt(e.pageX / $width,10);
    var $pageY = parseInt(e.pageY / $height,10);
    $(".js-mouseMoveRecolor").css("filter", "hue-rotate(" + (255 - $pageX) + "deg)");
 });