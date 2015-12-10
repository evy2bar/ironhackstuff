//function CenterControl(map) {
//    var controlDiv = document.createElement('div');
//    var controlUI = document.createElement('div');
//    controlDiv.appendChild(controlUI);
//
//    var controlText = document.createElement('div');
//    controlText.innerHTML = 'PANEL';
//    controlUI.appendChild(controlText);
//
//    controlUI.addEventListener('click', function() {
//        map.setCenter(from);
//    });
//
//    $(controlDiv).addClass("center-control")
//
//    this.element = controlDiv;
//}



function getDirectionPanelHtml () {
    var directionPanel = $(".direction-panel");

    // Get DOM element from jQuery because that's what Google Maps understands
    return directionPanel[0];
}


$(document).on("ready", function () {
    $(".js-hola").on("click", function () {
        alert("click en hola");
    });
})
