<?php
require_once "connect.php";
// $username = $_POST['user'];  
// $password = $_POST['pass'];  
$uname=$_SESSION['uname']=$_POST['uname'] ?? "";
$psw=$_SESSION['psw']=$_POST['psw'] ?? "";
 
    $username = stripcslashes($username);  
    $password = stripcslashes($password);  
    $username = mysqli_real_escape_string($conn, $username);  
    $password = mysqli_real_escape_string($conn, $password);  
  
    $sql = "select *from admin_data where username = '$username' and password = '$password'";  
    $result = mysqli_query($conn, $sql);  
     $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
    $count = mysqli_num_rows($result);  
      

    $yse='select * from admin_data where username="admin"';
    $ise=$conn->query($yse);
foreach ($ise as $i) {
    if ($uname == 'admin') {
        if ($i['username'] == $uname && $i['password'] == $psw) {
            header("location:admin_lan.html");

        } else {
            header("location:adminlogin.php?error=1");
        }
    }
}

    // if($count == ){  
    //     echo "<h1><center> Login successful </center></h1>";  
    // }  
    // else{  
        
    //     //echo "<h1> Login failed. Invalid username or password.</h1>";  
    //     //$message = "Username and/or Password incorrect.\\nTry again.";
    //     //echo "<script type='text/javascript'>alert('$message');</script>";
    //     header("location:adminlogin.php?error=1");

        
    // }   
      
?>  



