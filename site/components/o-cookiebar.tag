<o-cookiebar>
    <div class="o-cookieBar">
        <div class="u-cookieExplain-wrapper">
            <p data-i18n="s-cookiebar-content"></p>
            <!--<a href="help.html" target="_blank" class="mx-2" data-i18n="s-cookiebar-details"></a>-->
        </div>
        <a class="u-hide__cookieBar t-cookieAccept__a" data-i18n="s-cookiebar-accept"></a>
    </div>

    <script>

        function checkCookieBar() 
        {
            var hidden = getCookie("isCookiebarHidden");
            if (hidden != "true")
            {
                $(".o-cookieBar").slideDown().css('display', 'flex');
                $(".u-cookieExplain-wrapper, .u-hide__cookieBar").fadeIn();
                //hozzá kell adni a cookiebar magasságát a popoverhez eltartásnak
                
            }
        }

        $(document).ready(function() {
            $('.u-hide__cookieBar').click(function(){ 
                setCookie("isCookiebarHidden", "true", 30);
                $(".o-cookieBar").slideUp();
                $(".u-cookieExplain-wrapper, .u-hide__cookieBar").fadeOut();
                //le kell venni kattintásra a felső margin-t
                
            })
        });

        $(document).ready(function() { checkCookieBar(); });
    </script>
</o-cookiebar>