$(document).ready(function () {
    $('.dropdown-content12 a').click(function () { 
        var id = $(this).attr('id');
        localStorage.setItem("id", id);
    });
});