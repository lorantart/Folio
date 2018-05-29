<c-artworkdisplay style="width:100%" class="js-fadingBlock js-displayFadein">
    <figure class="u-display-wrapper { opts.width }">
        <div class="c-display__fbShare">
            <iframe src="{ opts.socialsource }" width="73" height="28" style="border:none; overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
        </div>
        <div class="u-display__img-wrapper">
        <img src="{ opts.imgsource }" class="c-display__img"/>
        </div>
        <figcaption class="c-display__caption">
            <a href="{ opts.musicsource }" target="_blank" class="t-artworkDisplay__a">{ opts.musictitle }</a>
            <p class="t-artworkDisplay__p--white localized">{ opts.artworktitle }</p>
            <p class="t-artworkDisplay__p localized">{ opts.date }</p>
            <ul>
                <li each = { opts.features }>
                    <img src="../assets/icon/tag--gold.svg" width="24px" height="16px"/>
                    <a href="{ featuresource }" class="t-artworkFeatures__a">{ featurename }</a>
                </li>
            </ul>

            <ul>
                <li each = { opts.extras }>
                    <img src="../assets/icon/tag--silver.svg" width="24px" height="16px"/>
                    <a href="{ extrasource }" class="t-artworkFeatures__a">{ extraname }</a>
                </li>
            </ul>
        </figcaption>
    </figure>

    <script>
        //fade in images on scroll
        $(document).ready(function(){
            var scrollAmount = $('.c-display__img').scrollWidth / 2;
        });

        $(document).ready(function() {
            $(window).scroll( function(){
                $('.js-displayFadein').each( function(i){
                    var bottom_of_object = $(this).offset().top + 200;
                    var bottom_of_window = $(window).scrollTop() + $(window).height();

                    if( bottom_of_window > bottom_of_object ){
                        $(this).animate({'opacity':'1'}, 400 );
                    }
                });

                $('.u-display__img-wrapper').each( function(i){
                    var bottom_of_object = $(this).offset().top + 200;
                    var bottom_of_window = $(window).scrollTop() + $(window).height();

                    if( bottom_of_window > bottom_of_object ){
                        $(this).animate({ scrollLeft: 200 }, 1600);
                    }
                });
            });

            $(function() {
                $('.u-display-wrapper').hover(function() {
                    $('.c-display__fbShare').fadeIn(200);
                }, function() {
                    $('.c-display__fbShare').fadeOut(200);
                });
            });
        });
    </script>
</c-artworkdisplay>