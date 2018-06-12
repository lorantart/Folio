jQuery(function($) {
    $.getJSON('/js/vendor/jquery.i18n/i18n/lang.json', lang => {
        $.i18n({
            locale: 'en'
        })
        
        $.i18n()
            .load(lang)
            .done(function() {
                $('.js-language-selector-hu').click(function() {
                    $.i18n({
                        locale: 'hu'
                    })
                    $('body').i18n();
                    $('.js-language-selector-hu').removeClass('m-language--inactive').addClass('m-language--active')
                    $('.js-language-selector-en').removeClass('m-language--active').addClass('m-language--inactive')
                    setHtml();
                })
        
                $('.js-language-selector-en').click(function() {
                    $.i18n({
                        locale: 'en'
                    })
                    $('body').i18n();
                    $('.js-language-selector-en').removeClass('m-language--inactive').addClass('m-language--active')
                    $('.js-language-selector-hu').removeClass('m-language--active').addClass('m-language--inactive')
                    setHtml();
                })
            $('body').i18n();
        })
    
        function set_locale_to(locale) {
            if (locale) {
                $.i18n().locale = locale;
            }
            $('body').i18n();
        }

        

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

        $(document).ready(function() { setHtml(), SetLocaleTo(locale); });
    })
})