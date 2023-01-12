
<?php
require_once "connect.php";

$aid=$_SESSION['aid']=$_POST['aid'] ?? "";
$phone=$_SESSION['phone']=$_POST['phone'] ?? "";
$res='INSERT INTO `student_data`(`id`, `phone`) VALUES ("' . $aid .'","' . $phone . '")';
if ($conn->query($res)) {
   header("location:admision_dash.php");  // code...
}
else{
  echo "error";
}
 ?>