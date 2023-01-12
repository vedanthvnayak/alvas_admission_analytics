<?php
require_once "connect.php";
$aid=$_SESSION['aid']=$_POST['aid'] ?? "";
$phone=$_SESSION['phone']=$_POST['phone'] ?? "";
$res='INSERT INTO `past_promo_data`(`promo_id`, `name_of_promo`,`start_date`,`end_date`,`duration`,`amount`) VALUES ("' . $aid .'","' . $phone . '")';
if ($conn->query($res)) {
   header("location:past_promo.php");  // code...
}
else{
  echo "error";
}
 ?>