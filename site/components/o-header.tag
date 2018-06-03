<o-header>
    <div class="c-header__popover" id="js-popover">
        <div class="u-header__hero-wrapper js-popover__hero-wrapper">
            <div class="c-header__hero"></div>
            <div class="c-header__name localized">s-navigation-name</div>
        </div>
        <div class="u-popover__navigation-wrapper">
            <ul>
                <li class="mb-6"><a href="index.html"    class="t-popover__a localized">s-navigation-projects</a></li>
                <li class="mb-5"><a href="my-story.html" class="t-popover__a localized">s-navigation-my-story</a></li>
            </ul>
            <div class="c-popover__divider"></div>
        </div>
        <div class="u-header__contact-wrapper">
            <ul>
                <li class="mb-3">
                    <i class="material-icons md-24 md-black m-popover--icon">phone</i>
                    <span class="mr-1">+</span>
                    <span class="mr-1">36</span>
                    <span class="mr-1">30</span>
                    <span class="mr-1">427</span>
                    <span class="mr-1">4274</span>
                </li>
                <li>
                    <i class="material-icons md-24 md-black m-popover--icon">email</i>hello@lorant.design
                </li>
            </ul>
        </div>
    </div>

    <header class="o-header { opts.overflow } { opts.color }">
        <div class="c-header__mask { opts.maskColor }"></div>
        
        <div class="u-header__hero-wrapper">
            
            

            <div class="u-user-wrapper">
                <div class="c-header__hero"></div>
                <div class="c-header__name localized">s-navigation-name</div>
            </div>
        </div>
        <div class="u-header__fillspace"></div>
        <div class="u-header__links-wrapper">
            <div class="c-header__navigation">
                <a href="my-story.html" class="mr-7 localized">s-navigation-my-story</a>
                <a href="index.html" class="localized">s-navigation-projects</a>
            </div>
            <div class="c-header__links-divider"></div>
            <div class="c-header__language">
                <a href="#" class="js-language-selector-hu m-language--active mr-3">HU</a>
                <a href="#" class="js-language-selector-en m-language--inactive">EN</a>
            </div>
        </div>
    </header>

    <script>
        $(document).ready(function(){
            $( '.u-header__hero-wrapper' ).mouseenter(function(event) {
                $( '.c-header__popover').clearQueue();
                $( '.c-header__popover').stop();
                $( '.c-header__popover').fadeIn( 200 );
            })
            
            $( '.c-header__popover' ).mouseleave(function(event) {
                $( '.c-header__popover').clearQueue();
                $( '.c-header__popover').stop();
                $( '.c-header__popover').fadeOut( 200 );
            });

            $( '.js-popover__hero-wrapper' ).click(function(event) {
                $( '.c-header__popover').hide();
            });
            
            $('document').on('touchend touchmove touchstart click tap', function(event) {
                $( '.c-header__popover').hide();
            });

            $('.js-language-selector-hu').click( function(e) 
            {
                e.preventDefault(); 

                var currentLanguage = getCookie("selectedLanguage");
                if(currentLanguage == "hu") return false;

                setCookie("selectedLanguage","hu",365); 
                location.reload(); 
                return false; 
            } );

            $('.js-language-selector-en').click( function(e) 
            {                
                e.preventDefault(); 

                var currentLanguage = getCookie("selectedLanguage");
                if(currentLanguage == "en") return false;

                setCookie("selectedLanguage","en",365); 
                location.reload(); 
                return false; 
            } );
        });
    </script>
</o-header>