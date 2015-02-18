
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
    	$("#map").invisible();
    })
  
function chat(){
	$("#map").invisible();
	$("#info").invisible();
	$("#tasks").invisible();
	$("#chat").visible();
}
function map(){
	$("#chat").invisible();
	$("#info").invisible();
	$("#tasks").invisible();
	$("#map").visible();
}
function info(){
	$("#map").invisible();
	$("#chat").invisible();
	$("#tasks").visible();
	$("#info").visible();
}



function respConfirm (player_name) {
 var response = confirm("Are you sure you want to tag\n"+player_name+"?");
  if (response) alert("Zombie Tagged!");
  else end; }
        
