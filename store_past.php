<?php
require_once "connect.php";
$pid=$_SESSION['pid']=$_POST['pid'] ?? "";
$pname=$_SESSION['pname']=$_POST['pname'] ?? "";
$sdate=$_SESSION['sdate']=$_POST['sdate'] ?? "";
$edate=$_SESSION['edate']=$_POST['edate'] ?? "";
$am=$_SESSION['am']=$_POST['am'] ?? "";



$res='INSERT INTO `past_promo_data`(`name_of_promo`,`start_date`,`end_date`,`amount`) VALUES ("' . $pname . '","' . $sdate . '","' . $edate . '","' . $am . '")';
if ($conn->query($res)) {
   header("location:past_promo.php");  // code...
}
else{
  echo "error";
}
 ?>