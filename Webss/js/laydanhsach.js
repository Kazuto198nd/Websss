$(document).ready(function () {
    var id = localStorage.getItem("id");
    $.ajax({
        type: "GET",
        url: "../php/laydanhsach.php",
        data: {id: id},
        dataType: "text",
        success: function (response) {
            var data = JSON.parse(response);
            console.log(data);
            var s='';

            s += "<tr>";
            s += "<th>";
            s += 'STT';
            s += "</th>";
            s += "<th>";
            s += 'Lớp';
            s += "</th>";
            s += "<th>";
            s += 'Mã SV';
            s += "</th>";
            s += "<th>";
            s += 'Tên SV';
            s += "</th>";
            s += "<th>";
            s += 'Điểm danh';
            s += "</th>";
            s += "</tr>";

            $.each(data, function (i, e) {
                s += "<tr>";
                s += "<td>";
                s += i+1;
                s+= "</td>";
                s += "<td>";
                s += e.lop;
                s+= "</td>";
                s += "<td>";
                s += e.Masv;
                s += "</td>";
                s += "<td>";
                s += e.Tensv;
                s += "</td>";
                s += "<td>";
                s += `<input type='checkbox' id=${e.Masv} class='checkDiemDanh'>`;
                s += "</td>";
                s += "</tr>";
            });

            $('#bangdiemdanh').html(s);

            $("#btnThem").click(function () { 
                var data=[];
                $('.checkDiemDanh').each( function (index) { 
                     var check = $(this).prop('checked');
                     check = Number(check);
                     var msv = $(this).attr('id')
                     data.push({msv:msv, check:check});
                });

                $.ajax({
                    type: "POST",
                    url: "../php/danhsach.php",
                    data: {malop:id,data :JSON.stringify(data)},
                    dataType: "Text",
                    success: function (response) {
                        console.log(response);
                        alert('diem danh thanh cong')
                    }
                });
            });
        }
    });


});