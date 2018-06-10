jQuery(function($) {
    $.getJSON('/js/vendor/jquery.i18n/i18n/lang.json', lang => {
        $.i18n( {
            locale: 'en'
        } );
        
        $.i18n()
            .load(lang)
            .done(function() {
            $('.switch-locale').on('click', 'a', function(e) {
                e.preventDefault();
                $.i18n().locale = $(this).data('locale');
            });
            $('body').i18n();
        });
    
        var set_locale_to = function(locale) {
            if (locale) {
                $.i18n().locale = locale;
            }
            $('body').i18n();
        };

        //Ezt itten én hákoltam bele
        //https://www.bountysource.com/issues/31020111-html-elements-are-escaped
        var elements = $('[data-i18n]');
        elements.each(function(index, value) {
        var messageKey = $(value).attr('data-i18n');
        var txt = $.i18n(messageKey);
        $(elements[index]).html(txt);
        });
    });
});