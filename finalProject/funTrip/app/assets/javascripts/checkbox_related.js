// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on ("ready",function(){
    if ($(".myDropdownCheckbox").length > 0) {
        var myData = [
            {id: 1, label: "Food" },
            {id: 2, label: "Night Life" },
            {id: 3, label: "Nature" },
            {id: 4, label: "Museums" },
            {id: 5, label: "Kids" },
            {id: 6, label: "Gas" },
            {id: 7, label: "Art" },
            {id: 8, label: "City Treasures" }

        ];
        $(".myDropdownCheckbox").dropdownCheckbox({
            data: myData,
            title: "Wish do List"
        });
    }

});

