function setCookieBar(name,value,exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var data = name + "=" + value;
    var expires = "expires=" + d.toGMTString();
    var path =  "path=/";

    var cookie = data + ";" + expires + ";" + path;
    console.log(cookie)
    document.cookie = cookie;
}

$('.u-hide__cookieBar').click(function(){ 
    setCookieBar("isCookiebarHidden", "true", 30);
    $(".o-cookieBar").hide();
    //le kell venni kattintásra a felső margin-t
    $(".c-header__popover").css("margin-top", "0");
});

function getCookieBar(name)
{
    var decodedCookie = decodeURIComponent(document.cookie);
    var kvpairs = decodedCookie.split("; ");

    for(var i = 0; i < kvpairs.length; i++) 
    {
        var kv = kvpairs[i].split('=');
        var key = kv[0];
        var value = kv[1];

        if (key == name)
        {
            return value;
        }
    }
    
    return "";
}

function checkCookieBar() 
{
    var hidden = getCookieBar("isCookiebarHidden");
    if (hidden != "true")
    {
        $(".o-cookieBar").show().css('display', 'flex');
        $(".c-header__popover").css("margin-top", "40px");
    }
}

$(document).ready(function() { checkCookieBar(); });