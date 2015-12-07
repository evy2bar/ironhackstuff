// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on ("ready",function(){
    if ($(".myDropdownCheckbox").length > 0) {
        var myData = [
            {id: 1, label: "Food" },
            {id: 2, label: "Night Life" },
            {id: 3, label: "Nature" },
            {id: 4, label: "Museums" },
            {id: 5, label: "Fun for fids" }

        ];
        $(".myDropdownCheckbox").dropdownCheckbox({
            data: myData,
            title: "Wish do List"
        });
    }

});

