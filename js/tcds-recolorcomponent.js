$(document).ready(function() 
{
    $(function() {
        $('.c-colorSwatches').click(function() {
            $('.c-colorSwatches').not(this).removeClass('active')
            $(this).addClass('active')
        })
    })

    $(function() {
        $('.js--activateMidtone').click(function() {
            if ($('.u-emailForm-wrapper').is('.m-emailForm--white, .m-emailForm--black')) {
                $('.u-emailForm-wrapper').removeClass('m-emailForm--white m-emailForm--black')
                $('.u-emailForm-wrapper').addClass('m-emailForm--midtone')
            }

            if ($('.c-textField').hasClass('t-textField--light')) {
                $('.c-textField').removeClass('t-textField--light')
                $('.c-textField').addClass('t-textField--dark')
            }

            ($('.t-emailForm__h2')).css('color','white')
        })

        $('.js--activateLight').click(function() {
            if ($('.u-emailForm-wrapper').is('.m-emailForm--midtone, .m-emailForm--black')) {
                $('.u-emailForm-wrapper').removeClass('m-emailForm--midtone m-emailForm--black')
                $('.u-emailForm-wrapper').addClass('m-emailForm--white')
            }

            if ($('.c-textField').hasClass('t-textField--dark')) {
                $('.c-textField').removeClass('t-textField--dark')
                $('.c-textField').addClass('t-textField--light')
            }

            ($('.t-emailForm__h2')).css('color','inherit')
        })

        $('.js--activateDark').click(function() {
            if ($('.u-emailForm-wrapper').is('.m-emailForm--midtone, .m-emailForm--white')) {
                $('.u-emailForm-wrapper').removeClass('m-emailForm--midtone m-emailForm--white')
                $('.u-emailForm-wrapper').addClass('m-emailForm--black')
            }

            if ($('.c-textField').hasClass('t-textField--light')) {
                $('.c-textField').removeClass('t-textField--light')
                $('.c-textField').addClass('t-textField--dark')
            }

            ($('.t-emailForm__h2')).css('color','white')
        })
    })
})
  