<c-socialshare>
    <div class="u-socialShare-wrapper">
        <p class="t-socialShare__h1" data-i18n="s-socialshare-title"></p>
        <div class="u-socialIcons-wrapper">
            <a href="{ opts.fb_link }" target="_blank" class="u-icon-wrapper m-background--facebook"><img src="../assets/icon/02-facebook--inverse.svg"></a>
            <a href="{ opts.li_link }" target="_blank" class="u-icon-wrapper m-background--linkedin"><img src="../assets/icon/05-linkedin--inverse.svg"></a>
            <a href="{ opts.tw_link }" target="_blank" class="u-icon-wrapper  m-background--twitter"><img src="../assets/icon/07-twitter--inverse.svg"></a>
        </div>
        <a class="t-socialShare__a" data-i18n="s-socialshare-exit"><a>
    </div>

    <script>
        function checkSocialShare() 
        {
            var hidden = getCookie("isSocialShareHidden");
            if (hidden != "true")
            {
                $('.u-socialShare-wrapper').delay(30000).fadeIn(400);         
            }
        }

        $(document).ready(function() {
            $('.t-socialShare__a').click(function() { 
                setCookie("isSocialShareHidden", "true", 1);
                $('.u-socialShare-wrapper').fadeOut(400);
            })
        });

        $(document).ready(function() { checkSocialShare(); });
    </script>
</c-socialshare>