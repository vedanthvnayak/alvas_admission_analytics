<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>ALVA's Admision analitics</title>
</head>

<style>
  body {
    background-image: url('./source/alvas-college-moodbidri.webp');
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
                <form action="store.php" method="post">
                    <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">Admision ID</label></h5>
                      <input type="text" name="aid" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Admision ID">
                    </div>
                    <div class="form-group">
                        <h5 style="color: azure"><label for="exampleInputEmail1">First Name</label></h5>
                        <input type="text" name="fname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name">
                      </div>
                      <div class="form-group">
                        <h5 style="color: azure"><label for="exampleInputEmail1">Last Name</label></h5>
                        <input type="text" name="lname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name">
                      </div>
                      <div class="form-group">
                      <h5 style="color: azure"><label for="exampleInputEmail1">phone number</label></h5>
                        <input type="number" name="pno" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter phone number">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">state</label>
                        <input type="text" name="lname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter phone number">
                      </div>
                    <br><button type="submit" class="btn btn-primary">Submit</button>
                  </form>
            </div>
        </div>
    </div>
      <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>