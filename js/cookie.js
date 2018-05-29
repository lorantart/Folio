function getCookie(name)
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

function setCookie(name,value,exdays) 
{
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));

    var data = name + "=" + value;
    var expires = "expires=" + d.toGMTString();
    var path =  "path=/";

    var cookie = data + ";" + expires + ";" + path;
    document.cookie = cookie;
}