jQuery(function($) {
    $.i18n( {
        locale: 'en'
    } );
    
    $.i18n().load( {
        'en': '../js/vendor/jquery.i18n/i18n/lang.json',
        'hu': '../js/vendor/jquery.i18n/i18n/lang.json'
    } ).done(function() {
        $('.switch-locale').on('click', 'a', function(e) {
            e.preventDefault();
            $.i18n().locale = $(this).data('locale');
        });
    });

    var set_locale_to = function(locale) {
        if (locale) {
            $.i18n().locale = locale;
        }
        $('body').i18n();
    };
});