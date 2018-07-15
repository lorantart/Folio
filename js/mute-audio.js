$(document).ready(function() {
    $(".u-video-wrapper").prop('muted', true);

    $('.u-video__mute--icon').click(function(){ 
        $(".u-video-wrapper").prop('muted', false);
    });
});