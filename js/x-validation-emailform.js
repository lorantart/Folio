// Hide browser default error message
$('input, select, textarea').on("invalid", function(e) {
    e.preventDefault();
});
// End

/*
Custom error message
Source:       https://developer.mozilla.org/en-US/docs/Learn/HTML/Forms/Form_validation
*/

var form               = document.getElementById('mc-embedded-subscribe-form');
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


form.addEventListener("submit", function (event)
{

    if (!emailfield.validity.valid)
    {
        emailfieldError.innerHTML = "Az email formátuma nem megfelelő";
        emailfieldError.className = "error active";
        event.preventDefault();
    }

    if (!nicknamefield.validity.valid)
    {
        nicknamefieldError.innerHTML = "Ne felejtsd el kitölteni!";
        nicknamefieldError.className = "error active";
        event.preventDefault();
    }

}, false);
