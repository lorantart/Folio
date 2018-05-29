//Az email-re javascript-tel kell bepozicionálni a labelt, ha invalid az input

var emailInput = $('#u-labelPositioner__js > input');
var label = $('#u-labelPositioner__js > label');

emailInput.blur( function(){
	if(emailInput.val() !== ''){
        label.addClass('u-labelPositioner__js');
    } else {
        label.removeClass('u-labelPositioner__js');
    }
});
