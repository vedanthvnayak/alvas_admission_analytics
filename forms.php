<!DOCTYPE html>
<html lang="en">
<head>
  <?php
  session_start();
  require_once "./connect.php"; 
  $st="select distinct state from st_di";
  $co=$conn->query($st);
  $st1="select distinct dist from st_di where state='" . $_SESSION['sta'] . "'";
  $co1=$conn->query($st1);
  
  ?>
<title>Alvas Admission Analytics</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>ALVA's Admision analitics</title>
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
  
    <div class="">
        <div class="row">
            <div class="col col-md-3 col-lg-3"></div>
            <div class="col col-md-6 col-lg-6 col-12">
                <form action="store_forms.php" method="post">
                    <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">Admision ID</label></h5>
                      <input type="text" name="aid" class="form-control" id="exampleInputEmail1" value="<?php echo $_SESSION['id'] ?>" aria-describedby="emailHelp" placeholder="Enter Admision ID" >
                    </div>

                    <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">phone number</label></h5>
                      <input type="number" name="pno" class="form-control" id="exampleInputEmail1" value="<?php echo $_SESSION['phone'] ?>"  aria-describedby="emailHelp" placeholder="Enter phone number" >
                    </div>

                      <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">First Name</label></h5>
                      <input type="text" name="fname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter First Name" >
                    </div>

                    <div class="form-group">
                        <h5 style="color: azure"><label for="exampleInputEmail1">Last Name</label></h5>
                        <input type="text" name="lname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name" >
                    </div>

                    <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">Country</label></h5>
                      <input type="text" name="coun" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your countryr" >
                    </div>

                    <div class="col-lg-4 col-md-4 col-4">
                        <label style="color: azure" for="state" >Select State</label>
                        <select name="sta" id="state" class="form-control">
                          <option selected disabled>Select State</option>
                          <option value="<?php echo $_SESSION['sta'] ?>" selected><?php echo $_SESSION['sta'] ?></option>
                          <?php foreach($co as $s){ ?>
                          <option value="<?php echo $s['state'] ?>"><?php echo $s['state'] ?></option>
                        <?php  } ?>
                        </select>
                    </div>
                    

                    <div class="col-lg-4 col-md-4 col-4">
                        <label style="color: azure" for="dist" >Select District</label>
                        <select name="dist" id="dist" class="form-control">
                          <option selected disabled>Select District</option>
                          <?php foreach($co1 as $s){ ?>
                          <option value="<?php echo $s['dist'] ?>"><?php echo $s['dist'] ?></option>
                        <?php  } ?>
                        </select>
                      </div>
                      

                              <?php echo $_GET['sta'] ?>
                    <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">Address</label></h5>
                      <input type="text" name="addr" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your address" >
                    </div>

                    <h5 style="color: azure"><label for="exampleInputEmail1">Religion</label></h5>
                      <h5 div class="form-group">
                      <select id="rel" name="rel">
                      <option value="Hindu">Hindu</option>
                      <option value="Muslim">Muslim</option>
                      <option value="Christian">Christian</option>
                      <option value="Sikh">Sikh</option>
                      <option value="Buddhist">Buddhist</option>
                      <option value="Jain">Jain</option>
                      <option value="Others">Others</option>
                    </select></h5>


                    <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">Cast</label></h5>
                        <input type="text" name="cas" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your Cast" >
                    </div>


                    <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">Category</label></h5>
                        <input type="text" name="cat" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your Category" >
                    </div>


                    <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">CET ranking</label></h5>
                        <input type="number" name="cetrnk" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your Cet ranking" >
                    </div>

                    <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">JEE ranking</label></h5>
                        <input type="number" name="jeernk" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your Jee ranking" >
                      </div>

                      <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">KomedK ranking</label></h5>
                        <input type="number" name="kmd" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your KomedK ranking" >
                      </div>

                      <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">SSLC/10th percentage</label></h5>
                        <input type="number" name="ten" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your 10th/SSLC percentage" >
                      </div>

                      <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">1st pu/11th or equvalent percentage</label></h5>
                        <input type="number" name="fpu" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your 1st pu/11th or equvalent percentage" >
                      </div>

                      <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">2nd pu/12th or equvalent percentage</label></h5>
                        <input type="number" name="spu" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your 2nd pu/12th or equvalent percentage" >
                      </div>


                    <h5 style="color: azure"><label for="exampleInputEmail1">How do you get to know about Alvas</label></h5>
                      <h5 div class="form-group">
                      <select id="pro" name="pro">
                      <option value="Pap">Paper/ads</option>
                      <option value="sms">SMS</option>
                      <option value="friends">By My Friends</option>
                      <option value="mou">Mouth of words</option>
                      <option value="online">Online/Social Media</option>
                      <option value="college">Some one from college</option>
                      <option value="Others">Others</option>
                    </select></h5>


                      <br><button type="submit" class="btn btn-primary">Submit</button>
                  </form>
            </div>
        </div>
    </div>
      <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>