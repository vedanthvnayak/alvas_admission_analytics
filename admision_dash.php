<!DOCTYPE html>
<?php require_once "connect.php"  ?>
<html>
<head>
<title>Alvas Admission Analytics</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- CSS only -->
<link rel="stylesheet" href="./css_files/landing_css.css">
</head>
<style>
 body {
    background-image: url('./source/alvas-college-moodbidri.webp');
    background-repeat: no-repeat;
    background-size: cover;
  }
  table {
    background: rgba( 255, 255, 255, 0.45 );
box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
backdrop-filter: blur( 15px );
-webkit-backdrop-filter: blur( 15px );
border-radius: 10px;
border: 1px solid rgba( 255, 255, 255, 0.18 );
border-radius: 4px;
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
    .navbar{
        position:fixed;
        width: 2190px;
    }
 
</style>
<body>

<?php include("navbar.html");?>

<br><br>
<div class='container'>
<h2 class="te">ENTER STUDENT ADMISION ID. AND PHONE NUMBER</h2><hr>
  <form action="store.php" method="POST">
    <label for="fname">Admision ID.</label>
    <input type="text"  name="aid" placeholder="Admision ID...">

    <label for="lname">Phone Number</label>
    <input type="number" class="form-control"  name="phone" placeholder="Phone Number...">

    <!-- <label for="country">Country</label>
    <select id="country" name="country">
      <option value="australia">Australia</option>
      <option value="canada">Canada</option>
      <option value="usa">USA</option>
    </select> -->
  
    <input type="submit" value="Add">
  </form>
</div>
<br><br>
<h2 class='te'>Added Students</h2>

<table>
  <tr>
    
    <th>Admision ID.</th>
    <th>Phone Number</th>
    <th>Edit</th>
  </tr>
<?php 
$usw='select * from stu_auth';
$od=$conn->query($usw);
foreach($od as $o){

?>
<tr>
    <td><?php echo $o['id'] ?></td>
    <td><?php echo $o['phone'] ?></td>
    <td><form action="edit_id.php" method="POST">
        <input type="text" value="<?php echo $o['phone'] ?>" name="phone" hidden>
        <input type="text" value="<?php echo $o['id'] ?>" name="aid" hidden>
        <button class="btn btn-danger" type="submit">delete</button>
    </form></td>
</tr>




<?php
}

?>
</table>
<!-- JavaScript Bundle with Popper -->
</body>
</html>
