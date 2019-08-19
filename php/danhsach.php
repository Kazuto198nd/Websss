<?php
    include "../php/connect.php";
    $json=array();
    $s='';
    $malop = $_POST['malop'];
    $danhsach= json_decode($_POST['data']);
    $sql = "DELETE from diemdanh where ngay = CURDATE() and mal = '$malop'";
    mysqli_query($conn, $sql);
    foreach($danhsach as $sv){
        $sql = "insert into diemdanh values (null,'$malop',now(),$sv->check)";
        $s=$s.$sql.'\n';
        mysqli_query($conn, $sql);
    }

    echo $s;
  
?>