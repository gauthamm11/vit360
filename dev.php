<?php
$servername = "localhost";
$username = "root";
$password = "gautham";
$dbname = "vit360";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    // die("Connection failed: " . mysqli_connect_error());
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>VIT360</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/main_style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="js/main_script.js"></script>

  <link rel="stylesheet" href="css/lightbox.css">
  <script src="js/lightbox.js"></script>
<script>
    lightbox.option({
      'fitImagesInViewport': true; 
    })
</script>

</head>
<body>




<div id="mySidenav" class="sidenav" style="text-align: center;">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <div class="thumbnail side-shadow">
        <img src="dp.png" class="img-circle side-shadow" alt="user DP" style="margin-top: 5%;width:80%;">
        <div class="caption">
          <center><p><b>13MSE1149</b></p></center>
        </div>
    </div>
    <b>Campus</b>
    <div class="list-group side-shadow">
     <a href="vellore.php" class="list-group-item">Vellore</a>
    <a href="page.php" class="list-group-item">Chennai</a>
    <a href="bhopal.php" class="list-group-item">Bhopal</a>
    <a href="amaravati.php" class="list-group-item">Amaravati</a>
  </div>
  <b>Settings</b>
  <div class="list-group side-shadow">
    <a href="#" class="list-group-item">Profile</a>
    <a href="#" class="list-group-item">Logout</a>
  </div>
<b>Credits</b>
  <div class="list-group side-shadow">
    <a href="#" class="list-group-item active">Developers</a>
  </div>
</div>





<div data-spy="affix" style="background-color: #fff;" class="shadow">
<div class="container-fluid" style="padding: 7px;background-color: #337ab7; color: #fff">&nbsp;&nbsp;
<span onclick="openNav()" class="glyphicon glyphicon-menu-hamburger" style="font-size: 25px;"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 30px;">Developers</span>
</div>
<div class="shadow" onclick="closeBav()">
</div>
</div>


<div class="container-fluid" onclick="closeBav()" style="padding-bottom: 20%;">
<br><br><br><br>
<center>
 <a href="gco.JPG" data-lightbox="image-1" class="example-image-link" data-title="Mindala Gautham Asok"><img src="gco.JPG" width="150" height="auto" class="img-circle img-responsive" /></a>

<br>
<div class="container-fluid" style="color: #337ab7;">
  <div class="row">
    <div class="col-xs-4">
      <span><i class="fa fa-facebook-square" style="font-size:36px; float: right;"></i></span>
    </div>
    <div class="col-xs-4">
      <span><i class="fa fa-twitter-square" style="font-size:36px"></i></span>
    </div>
    <div class="col-xs-4">
      <span><i class="fa fa-linkedin-square" style="font-size:36px; float: left;"></i></span>
    </div>
  </div>
</div>
<br><br>
 <a href="sc.png" data-lightbox="image-2" class="example-image-link" data-title="Sai Chaithanya"><img src="sc.png" width="150" height="auto" class="img-circle img-responsive" /></a>

<br>
<div class="container-fluid" style="color: #337ab7;">
  <div class="row">
    <div class="col-xs-4">
      <span><i class="fa fa-facebook-square" style="font-size:36px; float: right;"></i></span>
    </div>
    <div class="col-xs-4">
      <span><i class="fa fa-twitter-square" style="font-size:36px"></i></span>
    </div>
    <div class="col-xs-4">
      <span><i class="fa fa-linkedin-square" style="font-size:36px; float: left;"></i></span>
    </div>
  </div>
</div>
</center>



</div>




<!--
<div class="container-fluid stafab" onclick="closeBav()">
<span onclick="scrollToTop();return false">
<i class="fa fa-chevron-up" style="font-size:36px"></i>
-->
<!--
<i class="fa fa-arrow-up" style="font-size:36px"></i>
-->


<!--http://lokeshdhakar.com/projects/lightbox2/-->
</div>
</body>
</html>
