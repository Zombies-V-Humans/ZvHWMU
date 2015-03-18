
 function toggleFullScreen() {
  if (!document.fullscreenElement &&    // alternative standard method
      !document.mozFullScreenElement && !document.webkitFullscreenElement && !document.msFullscreenElement ) {  // current working methods
    if (document.documentElement.requestFullscreen) { document.documentElement.requestFullscreen(); }
    else if (document.documentElement.msRequestFullscreen) { document.documentElement.msRequestFullscreen(); }
    else if (document.documentElement.mozRequestFullScreen) { document.documentElement.mozRequestFullScreen(); } 
    else if (document.documentElement.webkitRequestFullscreen) { document.documentElement.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT); }
} else {
    if (document.exitFullscreen) {ndocument.exitFullscreen(); } 
    else if (document.msExitFullscreen) { document.msExitFullscreen(); } 
    else if (document.mozCancelFullScreen) { document.mozCancelFullScreen(); } 
    else if (document.webkitExitFullscreen) { document.webkitExitFullscreen(); }
  }
}

 $(document).ready(function() {

       
 $.fn.invisible = function() {
        return this.each(function() {
            $(this).css("visibility", "hidden");
        });
    };
    $.fn.visible = function() {
        return this.each(function() {
            $(this).css("visibility", "visible");
        });
    };

    })
  

function respConfirm (player_name) {
 var response = confirm("Are you sure you want to tag\n"+player_name+"?");
  if (response) alert("Zombie Tagged!");
  else return; }
        

var clicks = 0;

function rateLimiter() {
    var comment = $.trim($('#textarea').val());
    if (comment.length == 0) {
        alert('Message content is requried!');
        return;
    }
    clicks += 1;
    if (clicks > 1) {
        alert('Please wait 45 seconds between messages!');
        document.getElementById("postmessage").disabled = true;
        setTimeout('document.getElementById("postmessage").disabled=false;', 45000);
    } else {
        alert('Your message was successfully posted!');
    }
}

function jqUpdateSize(){
    // Get the dimensions of the viewport
    var headerheight = $("nav").height();
    var searchheight = $("#searchContainer").height();

    var width = $(window).width();
    var height = $(window).height();

            // $('#info' ).css('max-height', bodyheight);  
            $('.container-fluid' ).css('max-height', height);  
             $('body' ).css('max-height', height);  
            $('#infoContainer' ).css('max-height', height - searchheight - headerheight - (1/2)*searchheight);  
            $('.tasks' ).css('max-height', height - searchheight - headerheight - (1/2)*searchheight);  
            $('#map' ).css('max-height', height - searchheight - headerheight - (1/2)*searchheight);  


//alert(headerheight);

};
$(document).ready(jqUpdateSize);    // When the page first loads
$(window).resize(jqUpdateSize);     // When the browser changes size
var mapStyle = [
    ];
