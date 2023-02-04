<?php require_once "connect.php";

$pname=$_SESSION['pname']=$_POST['pname'] ?? "";


$isd='DELETE * FROM `past_promo_data` WHERE name_of_promo="' . $pname . '";';
if($conn->query($isd)){
    header("location:past_promo.php");
}
else{
    echo "error";
}


 ?>