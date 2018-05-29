$(function(){
    boxRollovers();
});

function boxRollovers()
{
    $selector = $(".js-coverAnimation");
    XAngle = 0;
    YAngle = 0;
    Z = 1;
    
    $selector.on("mousemove",function(e){
        var $this = $(this);
        var XRel = e.pageX - $this.offset().left;
        var YRel = e.pageY - $this.offset().top;
        var width = $this.width();
    
        YAngle = -(0.5 - (XRel / width)) * 2;
        XAngle =  (0.5 - (YRel / width)) * 2;
        updateView($this.children(".js-mouseMoveTransform"));
    });
    
    $selector.on("mouseleave",function(){
        oLayer = $(this).children(".js-mouseMoveTransform");
        oLayer.css({"transform":"perspective(525px) translateZ(0) rotateX(0deg) rotateY(0deg)","transition":"all 150ms linear 0s","-webkit-transition":"all 150ms linear 0s"});
    });
}

function updateView(oLayer)
{
    oLayer.css({"transform":"perspective(525px) translateZ(" + Z + "px) rotateX(" + XAngle + "deg) rotateY(" + YAngle + "deg)","transition":"none","-webkit-transition":"none"});
}