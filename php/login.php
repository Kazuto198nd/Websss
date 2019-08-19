<?php
    include "../php/connect.php";
    $json='';
    $username = $_POST['username'];
    $password = $_POST['password'];
    $sql = "select role from user where username = '$username' and password = '$password'";
    $ret = mysqli_query($conn, $sql);
    if(mysqli_num_rows($ret) > 0){
        $row = mysqli_fetch_assoc($ret);
        $json = $row['role'];
        
    }
    else{
        $json = 'sai mat khau';
    }
    echo $json;

?>