jQuery(function($) {
    $.getJSON('/js/vendor/jquery.i18n/i18n/lang.json', lang => {
        if (getCookie("selectedLanguage") === 'hu') {
            $.i18n({
                locale: 'hu'
            })
            activateHU()
        } else {
            $.i18n({
                locale: 'en'
            })
            activateEN()
        }
        
        $.i18n()
            .load(lang)
            .done(function() {
                $('.js-language-selector-hu').click(function() {
                    activateHU()
                    setHtml()
                })
        
                $('.js-language-selector-en').click(function() {
                    activateEN()
                    setHtml()
                })

                $('body').i18n()
            })

        function activateEN() {
            $('.js-language-selector-en').removeClass('m-language--inactive').addClass('m-language--active')
            $('.js-language-selector-hu').removeClass('m-language--active').addClass('m-language--inactive')
        }

        function activateHU() {
            $('.js-language-selector-hu').removeClass('m-language--inactive').addClass('m-language--active')
            $('.js-language-selector-en').removeClass('m-language--active').addClass('m-language--inactive')
        }
    
        /*
        function setLocaleTo(locale) {
            if (locale) {
                $.i18n().locale = locale;
            }
            $('body').i18n();
        }
        */  

        //Ezt itten én hákoltam bele
        //https://www.bountysource.com/issues/31020111-html-elements-are-escaped
        function setHtml() {
            var elements = $('[data-i18n]');
            elements.each(function(index, value) {
                var messageKey = $(value).attr('data-i18n');
                var txt = $.i18n(messageKey);
                $(elements[index]).html(txt);
            })
        }

        $(document).ready(function() { setHtml() });
    })
})