<?php require_once "connect.php";

$aid=$_SESSION['aid']=$_POST['aid'] ?? "";
$phone=$_SESSION['phone']=$_POST['phone'] ?? "";

$isd='DELETE FROM `stu_auth` WHERE id="' . $aid . '" and phone="' . $phone . '";';
if($conn->query($isd)){
    header("location:admision_dash.php");
}
else{
    echo "error";
}