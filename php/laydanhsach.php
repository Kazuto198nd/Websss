<?php
include "../php/connect.php";
$json=array();
$id = $_GET['id'];
$sql="select l.tenL, u.id,u.fullname from user u, lop l, hoc h where u.id = h.id and l.mal = h.mal and u.role='sinhvien' and l.mal = '$id'";
$ret = mysqli_query($conn,$sql);
if(mysqli_num_rows($ret) > 0){
    // $row = mysqli_fetch_assoc($ret);
    while($row = mysqli_fetch_assoc($ret)) {
        $masv = $row['id'];
        $tensv = $row['fullname'];
        $lop = $row['tenL'];
        array_push($json,array("Tensv"=>$tensv, "Masv"=>$masv, "lop"=>$lop));
    }
}
echo json_encode($json);
mysqli_close($conn);

?>