$(document).ready(function () {
    $('.dropdown-content12 a').click(function () { 
       var role = localStorage.getItem("role");
        if(role=='sinhvien'){
            alert('ban la ' + role + ' khhong co quyen diem danh');
            return;
        }

        var id = $(this).attr('id');
        localStorage.setItem("id", id);
        window.location.href = 'diemdanh.php'
    });
});