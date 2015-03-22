function toggleFullScreen() {
    if (!document.fullscreenElement && // alternative standard method
        !document.mozFullScreenElement && !document.webkitFullscreenElement && !document.msFullscreenElement) { // current working methods
        if (document.documentElement.requestFullscreen) {
            document.documentElement.requestFullscreen();
        } else if (document.documentElement.msRequestFullscreen) {
            document.documentElement.msRequestFullscreen();
        } else if (document.documentElement.mozRequestFullScreen) {
            document.documentElement.mozRequestFullScreen();
        } else if (document.documentElement.webkitRequestFullscreen) {
            document.documentElement.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT);
        }
    } else {
        if (document.exitFullscreen) {
            ndocument.exitFullscreen();
        } else if (document.msExitFullscreen) {
            document.msExitFullscreen();
        } else if (document.mozCancelFullScreen) {
            document.mozCancelFullScreen();
        } else if (document.webkitExitFullscreen) {
            document.webkitExitFullscreen();
        }
    }
}



function respConfirm(player_name) {
    var response = confirm("Are you sure you want to tag\n" + player_name + "?");
    if (response) alert("Zombie Tagged!");
    else return;
}


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

function setHeight(element, attr, divisor) {

    var height = $(window).height();

    $(element).css(attr, height / divisor);

}

function jqUpdateSize() {

    setHeight('body, .container-fluid', 'max-height', 1);
    setHeight('#ZombieListButton, #PlayerListButton, h3.jumbotron', 'font-size', 43);
    setHeight('#ZombieListButton, #PlayerListButton', 'height', 14);
    setHeight('.item', 'height', 2.3);
    setHeight('.submitbox, .box', 'height', 15);
    setHeight('bigframe-body', 'height', 1.2);
    setHeight('#zombie-list-container', 'height', 1.6);


};

$(document).ready(jqUpdateSize); // When the page first loads
$(window).resize(jqUpdateSize); // When the browser changes size


var mapStyle = [{
    "featureType": "water",
    "stylers": [{
        "color": "#19a0d8"
    }]
}, {
    "featureType": "administrative",
    "elementType": "labels.text.stroke",
    "stylers": [{
        "color": "#ffffff"
    }, {
        "weight": 6
    }]
}, {
    "featureType": "administrative",
    "elementType": "labels.text.fill",
    "stylers": [{
        "color": "#e85113"
    }]
}, {
    "featureType": "road.highway",
    "elementType": "geometry.stroke",
    "stylers": [{
        "color": "#efe9e4"
    }, {
        "lightness": -40
    }]
}, {
    "featureType": "road.arterial",
    "elementType": "geometry.stroke",
    "stylers": [{
        "color": "#efe9e4"
    }, {
        "lightness": -20
    }]
}, {
    "featureType": "road",
    "elementType": "labels.text.stroke",
    "stylers": [{
        "lightness": 100
    }]
}, {
    "featureType": "road",
    "elementType": "labels.text.fill",
    "stylers": [{
        "lightness": -100
    }]
}, {
    "featureType": "road.highway",
    "elementType": "labels.icon"
}, {
    "featureType": "landscape",
    "elementType": "labels",
    "stylers": [{
        "visibility": "off"
    }]
}, {
    "featureType": "landscape",
    "stylers": [{
        "lightness": 20
    }, {
        "color": "#efe9e4"
    }]
}, {
    "featureType": "landscape.man_made",
    "stylers": [{
        "visibility": "off"
    }]
}, {
    "featureType": "water",
    "elementType": "labels.text.stroke",
    "stylers": [{
        "lightness": 100
    }]
}, {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [{
        "lightness": -100
    }]
}, {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [{
        "hue": "#11ff00"
    }]
}, {
    "featureType": "poi",
    "elementType": "labels.text.stroke",
    "stylers": [{
        "lightness": 100
    }]
}, {
    "featureType": "poi",
    "elementType": "labels.icon",
    "stylers": [{
        "hue": "#4cff00"
    }, {
        "saturation": 58
    }]
}, {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [{
        "visibility": "on"
    }, {
        "color": "#f0e4d3"
    }]
}, {
    "featureType": "road.highway",
    "elementType": "geometry.fill",
    "stylers": [{
        "color": "#efe9e4"
    }, {
        "lightness": -25
    }]
}, {
    "featureType": "road.arterial",
    "elementType": "geometry.fill",
    "stylers": [{
        "color": "#efe9e4"
    }, {
        "lightness": -10
    }]
}, {
    "featureType": "poi",
    "elementType": "labels",
    "stylers": [{
        "visibility": "simplified"
    }]
}];
var mapOptions = {
    center: new google.maps.LatLng(42.282924, -85.5995978),
    zoom: 15,
    disableDoubleClickZoom: true

};