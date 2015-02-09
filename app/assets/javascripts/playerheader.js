

$(document).ready(function() { document.getElementById("map").style.visibility="hidden";
document.getElementById("info").style.visibility="hidden";
document.getElementById("chat").style.visibility="visible"; });

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
