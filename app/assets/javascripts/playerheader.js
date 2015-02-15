
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
document.getElementById("map").style.visibility="hidden";

    })
  
function chat()
{
document.getElementById("map").style.visibility="hidden";
document.getElementById("info").style.visibility="hidden";
document.getElementById("chat").style.visibility="visible";
}
function map()
{
document.getElementById("chat").style.visibility="hidden";
document.getElementById("info").style.visibility="hidden";
document.getElementById("map").style.visibility="visible";

}
function info()
{
document.getElementById("chat").style.visibility="hidden";
document.getElementById("map").style.visibility="hidden";
document.getElementById("info").style.visibility="visible";

}
