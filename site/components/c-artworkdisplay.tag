<c-artworkdisplay style="width:100%" class="js-fadingBlock">
    <figure class="u-display-wrapper { opts.width }">
        <div class="c-display__fbShare">
            <iframe src="{ opts.socialsource }" width="73" height="28" style="border:none; overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
        </div>
        <div class="u-display__img-wrapper">
        <img src="{ opts.imgsource }" class="c-display__img"/>
        </div>
        <figcaption class="c-display__caption">
            <a href="{ opts.musicsource }" target="_blank" class="t-artworkDisplay__a" data-i18n="{ opts.musictitle }"></a>
            <p class="t-artworkDisplay__p--white" data-i18n="{ opts.artworktitle }"></p>
            <p class="t-artworkDisplay__p" data-i18n="{ opts.date }"></p>
            <ul>
                <li each = { opts.features }>
                    <img src="../assets/icon/tag--gold.svg" width="24px" height="16px"/>
                    <a href="{ featuresource }" class="t-artworkFeatures__a" data-i18n="{ featurename }"></a>
                </li>
            </ul>

            <ul>
                <li each = { opts.extras }>
                    <img src="../assets/icon/tag--silver.svg" width="24px" height="16px"/>
                    <a href="{ extrasource }" class="t-artworkFeatures__a" data-i18n="{ extraname }"></a>
                </li>
            </ul>
        </figcaption>
    </figure>

    <script>
        $(document).ready(function() {
            $('.u-display-wrapper').hover(function() {
                $('.c-display__fbShare').fadeIn(200);
            }, function() {
                $('.c-display__fbShare').fadeOut(200);
            });    
        });
    </script>
</c-artworkdisplay>