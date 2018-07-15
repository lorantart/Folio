<o-emailform class="js-fadingBlock">
    <section class="u-emailForm-wrapper { opts.hidden } { opts.color }">
        <div class="c-welcomeModule"></div>
        <div class="o-emailForm">
            <div id="mc_embed_signup">
                <form
                    action  ="https://facebook.us10.list-manage.com/subscribe/post-json?u=f166a4fec809ddc72abe762be&amp;id=4f5c138711&amp;c=?" 
                    method  ="get"
                    id      ="mc-embedded-subscribe-form"
                    name    ="mc-embedded-subscribe-form"
                    class   ="validate"
                    target  ="_blank"
                    novalidate>

                    <div id="mc_embed_signup_scroll">
                        <div class="u-emailForm__header-wrapper">
                            <h2 class="t-emailForm__h2 { opts.title_visibility }" data-i18n="s-emailform-title"></h2>
                        </div>
                        <p class="t-emailForm__p { opts.desc_visibility }" data-i18n="s-emailform-p"></p>
                            
                        <div class="mc-field-group">
                            <div class="u-textField-wrapper u-labelPositioner__js">
                                <input type     ="email"
                                    value       =""
                                    name        ="EMAIL"
                                    class       ="c-textField { opts.input_color }"
                                    id          ="mce-EMAIL"
                                    pattern     =".*@.*\..*"
                                    required>
                                <span class="c-textField__bar"></span>
                                <label for="mce-EMAIL" class="c-textField__label { opts.recolor_label }" data-i18n="s-emailform-email"></label>
                                <span id="mce-EMAIL--error" class="error" aria-live="polite"></span>
                            </div>
                        </div>

                        <div class="mc-field-group">
                            <div class="u-textField-wrapper">
                                <input type      ="text"
                                        value    =""
                                        name     ="FNAME"
                                        class    ="c-textField { opts.input_color }"
                                        id       ="mce-FNAME"
                                        required>
                                <span class="c-textField__bar"></span>
                                <label for="mce-FNAME" class="c-textField__label { opts.recolor_label }" data-i18n="s-emailform-nickname"></label>
                                <span id="mce-FNAME--error" class="error" aria-live="polite"></span>
                            </div>
                        </div>

                        <div id="mce-responses" class="clear">
                            <div class="response" id="mce-error-response"   style="display:none"></div>
                            <div class="response" id="mce-success-response" style="display:none"></div>
                        </div>

                        <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                        <div style="position: absolute; left: -5000px;" aria-hidden="true">
                            <input type="text" name="b_f166a4fec809ddc72abe762be_4f5c138711" tabindex="-1" value="">
                        </div>
                        
                        <div class="u-submit-wrapper">
                            <button data-ripple type="submit" value="Feliratkozom!" name="subscribe" id="mc-embedded-subscribe" class="c-primaryButton" data-i18n="s-emailform-cta"></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="c-emailForm__footer">
            <a class="t-emailForm__a c-emailForm__hide js-close { opts.hideable_visibility }" data-i18n="s-emailform-hide"></a>
        </div>
    </section>

    <script src="../js/cookie.js"></script>
    <script>
        /*
        //                           \\
        ||       RIPPLE EFFECT       ||
        \\                           //
        */
        $(document).ready(function(){

            $(document).on("mousedown", "[data-ripple]", function(e)
            {
                var $self = $(this);
                if ($self.is(".btn-disabled"))
                {
                    return;
                }

                if($self.closest("[data-ripple]")) 
                {
                    e.stopPropagation();
                }

                var initPos = $self.css("position"),
                    offs = $self.offset(),
                    x = e.pageX - offs.left,
                    y = e.pageY - offs.top,
                    dia = Math.min(this.offsetHeight, this.offsetWidth, 100), // start diameter
                    $ripple = $('<div/>', {class : "ripple",appendTo : $self });

                if (!initPos || initPos==="static")
                {
                    $self.css({position:"relative"});
                }
                
                $('<div/>',
                {
                    class : "rippleWave",
                    css : {
                        background: $self.data("ripple"),
                        width: dia,
                        height: dia,
                        left: x - (dia/2),
                        top: y - (dia/2),
                    },

                    appendTo : $ripple,
                    one : {
                        animationend : function(){
                            $ripple.remove();
                        }
                    }
                });
            });
        

            /*

            //                                                             \\
            ||       REPOSITION / FORMAT LABEL IF INPUT IS NOT EMPTY       ||
            \\                                                             //

            */
            var emailInput = $('.u-labelPositioner__js > input');
            var label = $('.u-labelPositioner__js > label');

            emailInput.blur( function(){
                if(emailInput.val() !== ''){
                    label.addClass('u-labelPositioner__js');
                } else {
                    label.removeClass('u-labelPositioner__js');
                }
            });




            /*

            //                                    \\
            ||       AJAX MSG AFTER SUCCESS       ||
            \\                                    //

            */
            
            // hide browser default validation
            $('input, select, textarea').on("invalid", function(e) {
                e.preventDefault();
            });
            // end

            var $form = $('#mc-embedded-subscribe-form')

            if ($form.length > 0) 
            {
                $('form button[type="submit"]').bind('click', function(event) {
                if (event) event.preventDefault()
                    if (validate_form(event))
                    {
                        register($form) 
                    }
                })
            }

            function register($form)
            {
                $.ajax({
                    type: $form.attr('method'),
                    url:  $form.attr('action'),
                    data: $form.serialize(),
                    cache: false,
                    dataType: 'json',
                    contentType: 'application/json; charset=utf-8',

                    error:   function (err) { 
                        alert('Could not connect to the registration server. Please try again later.') 
                    },

                    success: function (data) {
                        if (data.result === 'success')
                        {
                            $('.o-emailForm').slideUp(400)
                            if (getCookie("selectedLanguage") === 'hu') {
                                $('.c-welcomeModule').html("Köszi!<br> Hamarosan küldöm a menő cuccokat :)")
                            } else {
                                $('.c-welcomeModule').html("Thanks!<br> You'll get all 'em goodies :)")
                            }
                            $('.c-welcomeModule').delay(600).slideDown()
                            $('#mce-EMAIL').val('')
                        }
                        else if (data.result === 'error') 
                        {       
                            $('.c-welcomeModule').html(generate_error_message_from_data(data))
                            $('.o-emailForm').slideUp(400)
                            $('.c-welcomeModule').delay(600).slideDown()
                            $('#mce-EMAIL').val('')
                        }
                    }
                })
            };

            function generate_error_message_from_data(data){
                var too_many_signup_attempts = new RegExp('Recipient "(.*)" has too many recent signup requests');
                var already_signed_up = new RegExp('(.*) is already subscribed to list lorantart followers\. <a href="(.*)">Click here to update your profile<\/a>')

                if (data.msg.match(too_many_signup_attempts))
                {
                    var match = data.msg.match(too_many_signup_attempts);
                    var email = match[1]

                    if (getCookie("selectedLanguage") === 'hu') {
                        return "Hey, hey, hey!!<br>Don't be so greedy... You've been trying to register '+email+' too many times!";
                    } else {
                        return "Hé, hé, hé!!<br>Ne legyél ennyire mohó... Túl sokszor próbáltad regisztrálni ezt a címet: '+email+'!";
                    }
                }
                if (data.msg.match(already_signed_up))
                {
                    var match = data.msg.match(already_signed_up);
                    var email = match[1]
                    var link = match[2]

                    if (getCookie("selectedLanguage") === 'hu') {
                        return 'Már regisztráltad ezt a címet: '+email+'.<br><a class="t-feedback__a" href="'+link+'">Itt tudod módosítani a beállításaidat.</a>'
                    } else {
                        return 'You\'ve already registered '+email+'.<br><a class="t-feedback__a" href="'+link+'">You can edit your preferences here.</a>'
                    }
                }
                else
                {
                    if (getCookie("selectedLanguage") === 'hu') {
                        return 'Hiba történt a regisztráció közben. Próbálkozz később!'
                    } else {
                        return 'An error occurred during subscription. Try again later!'
                    }
                }
            }

            /*

            //                               \\
            ||       CUSTOM VALIDATION       ||
            \\                               //

            Custom error message
            Source:       https://developer.mozilla.org/en-US/docs/Learn/HTML/Forms/Form_validation

            */
            var form               = document.getElementById('mc-embedded-subscribe');
            var emailfield         = document.getElementById('mce-EMAIL');
            var emailfieldError    = document.getElementById('mce-EMAIL--error');
            var nicknamefield      = document.getElementById('mce-FNAME');
            var nicknamefieldError = document.getElementById('mce-FNAME--error');

            emailfield.addEventListener("input", function (event)
            {            
                if (emailfield.validity.valid)
                {
                    emailfieldError.innerHTML = "";
                    emailfieldError.className = "error";
                }

            }, false);


            nicknamefield.addEventListener("input", function (event)
            {
                if (nicknamefield.validity.valid)
                {
                    nicknamefieldError.innerHTML = "";
                    nicknamefieldError.className = "error";
                }

            }, false);

            
            //form.addEventListener("submit", function (event)
            function validate_form(event)
            {
                if (!emailfield.validity.valid)
                {
                    if (getCookie("selectedLanguage") === 'hu') {
                        emailfieldError.innerHTML = "Valós email címet adj meg!";
                    } else {
                        emailfieldError.innerHTML = "Enter a valid email address!";
                    }
                    emailfieldError.className = "error active";
                    event.preventDefault();
                }

                if (!nicknamefield.validity.valid)
                {
                    if (getCookie("selectedLanguage") === 'hu') {
                        nicknamefieldError.innerHTML = "Add meg a nevedet!";
                    } else {
                        nicknamefieldError.innerHTML = "Enter your nickname!";
                    }
                    nicknamefieldError.className = "error active";
                    event.preventDefault();
                }

                return emailfield.validity.valid && nicknamefield.validity.valid;
            }




            /*

            //                               \\
            ||  COOKIE TO HIDE EMAIL BLOCK   ||
            \\                               //

            */

            $('.js-close').click(function(){ 
                setCookie("hide", "true", 30);
                $(".js-true").slideUp();
            });

            var hidden = getCookie("hide");
            if (hidden == "true") 
            {
                $(".js-true").hide();
            }

        });
    </script>
</o-emailform>