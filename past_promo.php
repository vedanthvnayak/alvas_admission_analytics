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
<h2 class="te">ENTER NEW PROMOTION DATA</h2><hr>
  <form action="store_past.php" method="POST">

    

    <label for="lname">Name of Promotion made</label>
    <input type="text" class="form-control"  name="pname" placeholder="Name of Promotion made...">
    
    <label for="lname">Start Date</label>
    <input type="date" class="form-control"  name="sdate" placeholder="Start date">

    <label for="lname">End Date</label>
    <input type="date" class="form-control"  name="edate" placeholder="End date">

    <!-- <label for="lname">Duration of Promotion</label>
    <input type="text" class="form-control"  name="pname" placeholder="Name of Promotion made..."> -->
    
    <label for="lname">Amount Spent</label>
    <input type="number" class="form-control"  name="am" placeholder="Amount spent...">

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
<h2 class='te'>Past Promo</h2>

<table>
  <tr>
    
    <th>Promotion ID.</th>
    <th>Promotion Name</th>
    <th>Start Date</th>
    <th>End Date</th>
    <th>Amount Spent</th>
    <th>Edit</th>
  </tr>
<?php 
$usw='select * from past_promo_data;';
$od=$conn->query($usw);
foreach($od as $o){

?>
<tr>
    <td><?php echo $o['promo_id'] ?></td>
    <td><?php echo $o['name_of_promo'] ?></td>
    <td><?php echo $o['start_date'] ?></td>
    <td><?php echo $o['end_date'] ?></td>
    <td><?php echo $o['amount'] ?></td>
    <td><form action="del_past.php" method="POST">
        <input type="text" value="<?php echo $o['pid'] ?>" name="pid" hidden>
        <input type="text" value="<?php echo $o['pname'] ?>" name="pname" hidden>
        <input type="date" value="<?php echo $o['sdate'] ?>" name="sdate" hidden>
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
