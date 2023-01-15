<!DOCTYPE html>
<html>
<head>
  <title>Alvas Admission Analytics</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
 
<link rel="stylesheet" href="./css_files/landing_css.css">
</head>
<style>
 body {
    background-image: url('./source/16_mn Alvas (1).jpg');
    background-repeat: no-repeat;
    background-size: cover;
  }

</style>
<body>

<?php include("navbar.html");?>

<br><br>
<div class='container'>
<h2 class="te">ENTER YOUR ADMISION ID. AND PHONE NUMBER TO LOGIN</h2><hr>
  <form action="athonticate.php" method="POST">
    <H4><label for="fname">Admision ID..</label></H4>
    <input type="text" id="fname" name="aid" placeholder="Admision ID...">

    <h4><label for="lname">Phone Number</label></h4>
    <input type="text" id="lname" name="phone" placeholder="Phone Number...">
  
    <h1><button class="btn btn-success" type="submit">Login</button></h1>
  </form>
</div>

</body>
</html>
