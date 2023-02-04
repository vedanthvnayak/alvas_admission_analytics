<!-- 
<?php
session_start();
require_once "connect.php";
// $servername = "localhost";
// $username = "root";
// $password = "";
// $dbname="admision";
$aid=$_SESSION['aid']=$_POST['aid'] ?? "";
$phone=$_SESSION['phone']=$_POST['phone'] ?? "";
$state=$_SESSION['sta']=$_POST['sta'] ?? "";
// $conn=new mysqli($servername, $username, $password, $dbname);

$yse='select * from stu_auth';
$ise=$conn->query($yse);
foreach($ise as $i){
    if($i['id']==$aid && $i['phone']==$phone){
        if($i['flag']==0){
            $_SESSION['id']= $_POST['id']=$aid;
            $_SESSION['phone']= $_POST['id']=$phone;
            $_SESSION['sta']=$state;
            header("location:forms.php");
        }
        else{
            echo 'already filled';
        }
    }
    else{
        echo 'errorooororo';
    }
}

 ?> -->
