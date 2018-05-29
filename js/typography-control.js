function changeFont(font){
    document.getElementById('inputDemo').style.fontWeight = font.value;
}

$('.m-modifier--top').click(function() {
    var fontSize = parseInt($(inputDemo).css("font-size"));
    fontSize = fontSize + 4 + "px";
    $('.c-textField').css({'font-size':fontSize});
});

$('.m-modifier--bottom').click(function() {
    var fontSize = parseInt($(inputDemo).css("font-size"));
    fontSize = fontSize - 4 + "px";
    $('.c-textField').css({'font-size':fontSize});
});