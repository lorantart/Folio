<c-section-navigator>
    <div class="u-sectionNavigator-wrapper js-navigatorFadeIn">
        <div class="c-sectionNavigator__marker"></div>
        <ol id="js-chapterlist">
            <li class="js-chapter" each={ opts.toc_items }>
                <a href="{ chapter_id }" data-i18n="{ chapter_title }"></a>
            </li>
        </ol>
    </div>

    <script>
    //Scroll to section on click
    $(document).on('click', 'a[href^="#"]', function(e) {
        var id = $(this).attr('href');
        
        var $id = $(id);
        if ($id.length === 0) {
            return;
        }

        e.preventDefault();
        
        // top position relative to the document
        var pos = $id.offset().top - 100;
        
        // animated top scrolling
        $('body, html').animate({scrollTop: pos}, scrollSpeed);
    });

    //Fade in navbar after position
    $(document).on("scroll.navigator", function() {
        var fadeInPosition = $('.js-coverHeight').outerHeight() + $('.js-prologueHeight').outerHeight();
        if ($(this).scrollTop() > fadeInPosition) {
            $(".js-navigatorFadeIn").fadeIn(200).css('display', 'flex');
        } else {
            $(".js-navigatorFadeIn").stop().fadeOut(200);
        }
    });

    //Chapter marker positioner
    function getCurrentChapter()
    {
        var currentPosition = $(this).scrollTop()
        var threshold = 300;

        var chapters = $('[id^=chapter-]')
        var chapterNumber = 0;
        for (var i = 0; i<chapters.length; i++)
        {
            if(currentPosition >= chapters.eq(i).offset().top - threshold) chapterNumber = i;
        }

        return chapterNumber;
    }

    function changeChapterOnScroll()
    {
        var currentchapter = getCurrentChapter();
        changeMarker(currentchapter)
    }

    function changeMarker(currentIndex)
    {
        var previousChapter = $(".js-chapter.active")
        var newChapter = $(".js-chapter").eq(currentIndex)

        if(newChapter.index() != previousChapter.index())
        {
            var marker = $(".c-sectionNavigator__marker")
            marker.clearQueue()
            marker.stop()
            marker.animate({ 
                top: calculateMarkerOffset(currentIndex),
            }, scrollSpeed );

            previousChapter.removeClass("active")
            newChapter.addClass('active')
        }
    }

    function calculateMarkerOffset(currentIndex)
    {
        return (currentIndex * 4) + "em"
    }

    function jsChapterOnClick(event)
    {
        var previousElement = $(".js-chapter.active")
        var currentIndex = $(this).index()

        $(document).off('scroll.chapterselect')

        var marker = $(".c-sectionNavigator__marker")
        marker.clearQueue()
        marker.stop()
        marker.animate({ 
            top: calculateMarkerOffset(currentIndex),
        }, scrollSpeed).promise().done( function (){
            $(document).on('scroll.chapterselect', changeChapterOnScroll)});

        previousElement.removeClass("active")
        $(this).addClass("active")
    }

    $(document).ready(function() 
    {
        $(".u-sectionNavigator-wrapper li:first").addClass("active")
        $(".js-chapter").on("click", jsChapterOnClick)
        $(document).on('scroll.chapterselect', changeChapterOnScroll)
    })
    </script>
</c-section-navigator>