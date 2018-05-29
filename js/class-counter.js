$(document).ready(function() {
    $.get('traditional-drawings.html', function(data)
    {
        var $data = $($.parseHTML(data))
        var count = $data.find('.js-portraits').length
        $('.js-writePortraitCount').text(count)
    },'html')



    $.get('the-divided-soul.html', function(data)
    {
        var $data = $($.parseHTML(data))
        var count = $data.find('.js-dividedsouls').length
        $('.js-writeSoulCount').text(count)
    },'html')



    $.get('daydreaming.html', function(data)
    {
        var $data = $($.parseHTML(data))
        var count = $data.find('.js-daydreams').length
        $('.js-writeDaydreamCount').text(count)
    },'html')
});