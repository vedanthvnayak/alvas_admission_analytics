<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;
  background-image: url('./source/alvas-college-moodbidri.webp');
    background-repeat: no-repeat;
    background-size: cover;
    
}
form {border: 4px solid #f1f1f1;
  width: 300px;
  height: 350px;
  margin: auto;
  background: rgba(249, 248, 248, 0.768);
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}




.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<?php include("navbar.html");?><br>
<body >



<form action="admin_auth.php" method="post">
  <div class="imgcontainer">
    
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        <br><br><br><br>
    <button type="submit">Login</button>
    <?php
    if(isset($_GET['error'])==true){
      echo '<font color="#FF0000"><p align="center">Wrong User name or password</p></font>';
    }
   
    ?>
    
  </div>

  
    
  </div>
</form>

</body>
</html>