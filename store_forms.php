<?php
require_once "connect.php";

$aid=$_SESSION['aid']=$_POST['aid'] ?? "";
$pno=$_SESSION['pno']=$_POST['pno'] ?? "";
$fname=$_SESSION['fname']=$_POST['fname'] ?? "";
$lname=$_SESSION['lname']=$_POST['lname'] ?? "";
$coun=$_SESSION['coun']=$_POST['coun'] ?? "";
$sta=$_SESSION['sta']=$_POST['sta'] ?? "";
$dist=$_SESSION['dist']=$_POST['dist'] ?? "";
$addr=$_SESSION['addr']=$_POST['addr'] ?? "";
$catr=$_SESSION['cetr']=$_POST['cetr'] ?? "";
$rel=$_SESSION['rel']=$_POST['rel'] ?? "";
$cas=$_SESSION['cas']=$_POST['cas'] ?? "";
$cat=$_SESSION['cat']=$_POST['cat'] ?? "";
$cetrnk=$_SESSION['cetrnk']=$_POST['cetrnk'] ?? "";
$jeernk=$_SESSION['jeernk']=$_POST['jeernk'] ?? "";
$kmd=$_SESSION['kmd']=$_POST['kmd'] ?? "";
$ten=$_SESSION['ten']=$_POST['ten'] ?? "";
$fpu=$_SESSION['fpu']=$_POST['fpu'] ?? "";
$spu=$_SESSION['spu']=$_POST['spu'] ?? "";
$pro=$_SESSION['pro']=$_POST['pro'] ?? "";



$res='INSERT INTO `student_data`(`id`, `phone`,`first_name`,`last_name`,`country`,`state`,`district`,`address`,`relegion`,`cast`,`category`,`cet_ran`,`jee`,`komedk`,`sslc`,`pu1`,`pu2`,`promotion`) VALUES ("' . $aid .'","' . $pno . '","' . $fname . '","' . $lname . '","' . $coun . '","' . $sta . '","' . $dist . '","' . $addr . '","' . $rel . '","' . $cas . '","' . $cat . '","' . $cetrnk . '","' . $jeernk . '","' . $kmd . '","' . $ten . '","' . $fpu . '","' . $spu . '","' . $pro . '")';
if ($conn->query($res)) {
   header("location:thankyou.php");  // code...
}
else{
  echo "error";
}
 ?>