//ready time
jQuery(document).ready(function(){
    jQuery(document).ready(function(){
        loadResources()
    });
});

//load time
$(document).on('load', function() {
//    loadResources()
});

function loadResources()
{
    var json = $.getJSON("/assets/localization/string_resources.json", 
    function (data)
    { 
        var selectedLanguage = getCookie("selectedLanguage")
        var browserLanguage = navigator.language || navigator.userLanguage;
        if(selectedLanguage == null){
            if(userLang.substring(0,2) == 'hu'){
                selectedLanguage = "hu"
            } else {
                selectedLanguage = "en"
            }
        }

        
        var localized_strings = $(".localized")
        for (var i = 0; i<localized_strings.length; i++)
        {
            currentText = localized_strings[i].innerText.trim().toLowerCase();
            if (data[currentText] != null){
                localized_strings[i].innerHTML = ((selectedLanguage == "hu") ? data[currentText].hu : data[currentText].en)
            }
        }

        /*
        $('.localized').each(function(){
            var c=$(this).text().trim().toLowerCase();
            $(this).html(data[c][selectedLanguage])
        })
        */
    })
}