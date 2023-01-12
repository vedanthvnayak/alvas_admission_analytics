<!-- 
<?php
require_once "connect.php";
// $servername = "localhost";
// $username = "root";
// $password = "";
// $dbname="admision";
$aid=$_SESSION['aid']=$_POST['aid'] ?? "";
$phone=$_SESSION['phone']=$_POST['phone'] ?? "";
// $conn=new mysqli($servername, $username, $password, $dbname);

$yse='select * from student_data';
$ise=$conn->query($yse);
foreach($ise as $i){
    if($i['id']==$aid && $i['phone']==$phone){
        if($i['flag']==0){
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
