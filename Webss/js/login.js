$(document).ready(function () {
    $('#btnLogin').click(function () { 
        var username = $('#username').val();
        var password = $('#password').val();
        $.ajax({
            type: "POST",
            url: "../php/login.php",
            data: {username:username, password: password},
            dataType: "text",
            success: function (response) {
                if(response == 'admin' || response == 'sinhvien' || response == 'giangvien'){
                    localStorage.setItem("role",response );
                    window.location.href = 'index2.php'
                }
                else{
                    alert(response)
                }
            }
        });
    });

    $('#btnTrangChu').click(function () { 
        window.location.href = 'index.php'
        
    });
});