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
    <a href="#" class="list-group-item active">Amaravati</a>
  </div>
  <b>Settings</b>
  <div class="list-group side-shadow">
    <a href="#" class="list-group-item"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;Profile</a>
    <a href="#" class="list-group-item"><span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;Logout</a>
  </div>
<b>Credits</b>
  <div class="list-group side-shadow">
    <a href="dev.php" class="list-group-item"><i class="fa fa-gears"></i>&nbsp;&nbsp;Developers</a>
  </div>
</div>





<div data-spy="affix" style="background-color: #fff;" class="shadow">
<div class="container-fluid" style="padding: 7px;background-color: #337ab7; color: #fff">&nbsp;&nbsp;
<span onclick="openNav()" class="glyphicon glyphicon-menu-hamburger" style="font-size: 25px;"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 30px;">Amaravati</span>
</div>
<div class="shadow" onclick="closeBav()">
  <ul class="nav nav-tabs nav-pills" style="background-color: #fff;" id="myTab">
    <li class="active"><a data-toggle="tab" href="#home"><i class="fa fa-book" style="font-size: 18px;"></i>&nbsp;Edu</a></li>
    <li><a data-toggle="tab" href="#menu1"><i class="fa fa-calendar" style="font-size: 15px;"></i>&nbsp;Events</a></li>
    <li><a data-toggle="tab" href="#menu2"><i class="fa fa-home" style="font-size: 20px;"></i>&nbsp;Clubs</a></li>
    <li><a data-toggle="tab" href="#menu3"><i class="fa fa-bullhorn" style="font-size: 17px;"></i>&nbsp;Info</a></li>
  </ul>
</div>
</div>





  <div class="container-fluid" onclick="closeBav()" style="padding-bottom: 20%;">
  <br><br><br><br><br><br>
  <div class="tab-content">

    <div id="home" class="tab-pane in active">
      
      <?php


$ans = $_GET['ans'];

if ($ans == null) {

      $aasql = "SELECT * FROM academics_school";
      $aaresult = mysqli_query($conn, $aasql);
echo "<div class='dropdown' style='position: fixed;'>
            <button class='btn btn-default dropdown-toggle' type='button' data-toggle='dropdown'>School  <span class='caret'></span></button>
           <ul class='dropdown-menu'>
          <li class='dropdown-header'>Select School</li>";
if (mysqli_num_rows($aaresult) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($aaresult)) {
        //echo "<br>".$row["school"];
      echo " 
         <li><a href='page.php?school=".$row['school_id']."'>".$row['school']."</a></li>";
    }
} else {
    echo "0 results";
}
echo "</ul></div><br><br><br>";


$ax = $_GET['school'];

if ($ax != null) {

$asql = "SELECT *,academics_school.school FROM academics_questions JOIN academics_school ON academics_questions.question_school_id = academics_school.school_id WHERE (academics_school.campus='Chennai' AND academics_questions.question_school_id='".$ax."')";

}
else{
$asql = "SELECT *,academics_school.school FROM academics_questions JOIN academics_school ON academics_questions.question_school_id = academics_school.school_id WHERE (academics_school.campus='Chennai')";  
}

$aresult = mysqli_query($conn, $asql);

if (mysqli_num_rows($aresult) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($aresult)) {
        echo $row["school"]."<br><a href='page.php?ans=".$row["q_id"]."'>" . $row["question"]. "</a> <br>Name: " . $row["asked_by"]. " <br>" . $row["posted_date"]."<br><br>";
    }
} else {
    echo "<center class='well'><strong><img src='images/res/tired.png' alt='I'm so tired of searching!/><br>Sry!<br><br>no results found<br><br>check after sometime</strong></center>";
}
}
else
{
?>
<script>
function goBack() {
    window.location.href = "http://localhost/vit360/page.php";
}
</script>
<button class='btn btn-default' style='position: fixed;font-size:15px;' type='button' onclick='goBack()'><i class='fa fa-angle-double-left'></i>&nbsp;Back</button><br><br><br>
<?php
$ans_q = "SELECT * from academics_answers join academics_questions on academics_answers.question_id = academics_questions.q_id WHERE (question_id='".$ans."')"; 

$ques = "SELECT * from academics_questions WHERE (q_id='".$ans."')"; 

$qsub = mysqli_query($conn, $ques);

if (mysqli_num_rows($qsub) > 0) {
    while($row = mysqli_fetch_assoc($qsub)) {
        echo $row["question"]."<br><br>";
       // echo $row["answer"]."<br>";
    }
} else {
    echo "<center class='well'><strong><img src='images/res/tired.png' alt='I'm so tired of searching!/><br>Sry!<br><br>no results found<br><br>check after sometime</strong></center>";
}

echo "<h4>Answers</h4>";

$sub = mysqli_query($conn, $ans_q);

if (mysqli_num_rows($sub) > 0) {
    while($row = mysqli_fetch_assoc($sub)) {
       // echo $row["question"]."<br><br>";
        echo $row["answer"]."<br><br>";
    }
} else {
    echo "<center class='well'><strong><img src='images/res/tired.png' alt='I'm so tired of searching!/><br>Sry!<br><br>no answers found</strong></center>";
}

}
      ?>
    </div>


    <div id="menu1" class="tab-pane">
     <div class="dropdown" style="position: fixed;">
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Month  <span class="caret"></span></button>
    <ul class="dropdown-menu">
       <li class="dropdown-header">Select Month</li>
      <li><a href="page.php?month=all">All Months</a></li>
      <li><a href="page.php?month=Jan">January</a></li>
      <li><a href="page.php?month=Feb">February</a></li>
      <li><a href="page.php?month=Mar">March</a></li>
      <li><a href="page.php?month=Apr">April</a></li>
      <li><a href="page.php?month=May">May</a></li>
    </ul>
  </div>
    <div class="dropdown" style="position: fixed; margin-left: 25%;">
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Type
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
    <li class="dropdown-header">Select Type</li>
      <li><a href="page.php?type=all">All Types</a></li>
      <li><a href="page.php?type=technical">Technical</a></li>
      <li><a href="page.php?type=workshops">Workshops</a></li>
      <li><a href="page.php?type=cultural">Cultural</a></li>
      <li><a href="page.php?type=sports">Sports</a></li>
    </ul>
  </div>
  <br><br><br>
<?php

$x = $_GET['month'];
$y = $_GET['type'];

if ($y == null) {
  if (($x != null) && ($x != "all")) {
  $esql = "SELECT * FROM event_details WHERE event_month='".$x."' ";
}
  if ($x == null || $x == "all") {
  $esql = "SELECT * FROM event_details ";
}

}
elseif ($x == null) {
  if (($y != null) && ($y != "all")) {
  $esql = "SELECT * FROM event_details WHERE event_type='".$y."' ";
}
  if ($y == null || $y == "all") {
  $esql = "SELECT * FROM event_details ";
}
}

$eresult = mysqli_query($conn, $esql);

if (mysqli_num_rows($eresult) > 0) {
     // output data of each row
     while($row = mysqli_fetch_assoc($eresult)) {

        echo "<div class='panel-group'>";
        echo "<div class='panel panel-default'>";
        echo "<div class='panel-heading'>";
        echo "<b>Title: " . $row["event_name"] ."</b>";
        echo "</div>";
        echo "<div class='panel-body'>";
        echo "<span>" . $row["description"] ."</span>";
        echo "</div>";
        echo "<div class='panel-footer'>";
        echo "<span>Date: <b>".$row["event_date"]."&nbsp;".$row["event_month"]."&nbsp;".$row["event_year"]."</b></span>
              <span style='float:right;'>Type: <b>".$row["event_type"]."</b></span>
              <br>
              <span>Venue: <b>".$row["venue"]."</b></span>
              <span style='float:right;'>Cost: <b>".$row["cost"]."</b></span>       
              ";
        echo "</div>";
        echo "</div></div>"; 
     }
} else {
     echo "<center class='well'><strong><img src='images/res/tired.png' alt='I'm so tired of searching!/><br>Sry!<br><br>no results found<br><br>check after sometime</strong></center>";
}
//mysqli_close($conn);
?>
    </div>
<!--<clubs>-->
    <div id="menu2" class="tab-pane">
     
<?php
$cid = $_GET["c_id"];
if ($cid == null) {
$club_list = "SELECT * FROM club_details ";
$clr = mysqli_query($conn, $club_list);
if (mysqli_num_rows($clr) > 0) {
     // output data of each row
     while($row = mysqli_fetch_assoc($clr)) {
        echo "<div class='panel-group'>";
        echo "<div class='panel panel-default'>";
        echo "<div class='panel-heading' style='text-align:center;'>";
        echo "<b>" . $row["club_name"] ."</b>";
        echo "</div>";
        echo "<a href='page.php?c_id=".$row["club_id"]."&c_n=".$row["club_name"]."'>";
        echo "<div class='panel-body' style='text-align:justify;'>";
        echo "<span>" . $row["club_description"] ."</span>";
        echo "</div>";
        echo "</a>";
       echo "<div class='panel-footer' style='text-align:center;'>";
        echo "<span>".$row["club_email"]."</span>";
        echo "</div>";
        echo "</div></div>";
     }
} else {
     echo "<center class='well'><strong><img src='images/res/tired.png' alt='I'm so tired of searching!/><br>Sry!<br><br>no results found<br><br>check after sometime</strong></center>";
}}
else{
  //echo $cid;
 ?>
<script>
function goBackT() {
    window.location.href = "http://localhost/vit360/page.php";
}
</script>

<button class='btn btn-default' style='position: fixed;font-size:15px;' type='button' onclick='goBackT()'><i class='fa fa-angle-double-left'></i>&nbsp;Back</button> 

<button class="btn btn-default" style="position: fixed;font-size:14px;margin-left: 25%;" type="button" data-toggle="modal" data-target="#myModal"><i class="fa fa-group"></i>&nbsp;Club Details</button>

<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><?php echo $_GET['c_n'];?></h4>
      </div>
      <div class="modal-body">
      <?php
      $cd = "SELECT * FROM `club_members`  WHERE clubid='".$cid."' ORDER BY `club_members`.`role` ASC";
$cdd = mysqli_query($conn, $cd);
if (mysqli_num_rows($cdd) > 0) {
     // output data of each row
  echo "Club Members<br>";
     while($row = mysqli_fetch_assoc($cdd)) {
        echo $row['email']."&nbsp;-&nbsp;".$row['role']."<br>";
     }
} else {
     echo "<center class='well'><strong><img src='images/res/tired.png' alt='I'm so tired of searching!/><br>Sry!<br><br>no results found<br><br>check after sometime</strong></center>";
}
      ?>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
 </div>
</div>


<br><br><br>
<?php

echo "<div class='panel panel-default' style='text-align:center;font-size: 18px;'><b>";
echo $_GET['c_n'];
echo "</b></div>";
echo "<h4 style='text-align:center;'><b>Task Line</b></h4>";

$club_task = "SELECT * FROM club_taskline WHERE c_id='".$cid."'";
$clt = mysqli_query($conn, $club_task);
if (mysqli_num_rows($clt) > 0) {
     // output data of each row
     while($row = mysqli_fetch_assoc($clt)) {
        echo "<div class='panel-group'>";
        echo "<div class='panel panel-default'>";
        echo "<div class='panel-heading'>";
        echo "<b>" . $row["task_title"] ."</b>";
        echo "</div>";
       // echo "<a href='page.php?c_id=".$row["club_id"]."'>";
        echo "<div class='panel-body' style='text-align:justify;'>";
        echo "<span>" . $row["task_description"] ."</span>";
        echo "</div>";
        //echo "</a>";
       echo "<div class='panel-footer' style='text-align:right;'>";
        echo "<span>".$row["posted_date"]."</span><br>
              <span>".$row["posted_by"];
        echo "</div>";
        echo "</div></div>";
     }
} else {
     echo "<center class='well'><strong><img src='images/res/tired.png' alt='I'm so tired of searching!/><br>Sry!<br><br>no tasks found<br><br>check after sometime</strong></center>";
}
}
     ?>

    </div>
<!--</clubs>-->

    <div id="menu3" class="tab-pane">
<div class="dropdown" style="position: fixed;">
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Month
    <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu" style="height: auto; max-height: 200px; overflow-x: hidden;">
      <li class="dropdown-header">Select Month</li>
      <li><a href="page.php?post_month=all">All Months</a></li>
      <li><a href="page.php?post_month=Jan">January</a></li>
      <li><a href="page.php?post_month=Feb">February</a></li>
      <li><a href="page.php?post_month=Mar">March</a></li>
      <li><a href="page.php?post_month=Apr">April</a></li>
      <li><a href="page.php?post_month=May">May</a></li> 
      </ul>
  </div>
<br><br><br>
<?php


$ix = $_GET['post_month'];
//$y = $_GET['type'];

if (($ix != null) && ($ix != "all")) {
$isql = "SELECT *,DATE_FORMAT(post_date,'%d/%m/%Y') as Date FROM info_details JOIN info_admin ON info_details.info_posted_by = info_admin.info_admin_email WHERE (info_details.campus='Chennai' AND info_details.post_month='".$ix."')";
}
if ($ix == null || $ix == "all") {
$isql = "SELECT *,DATE_FORMAT(post_date,'%d/%m/%Y') as Date FROM info_details JOIN info_admin ON info_details.info_posted_by = info_admin.info_admin_email WHERE (info_details.campus = 'Chennai')";
}

$iresult = mysqli_query($conn, $isql);

if (mysqli_num_rows($iresult) > 0) {
     // output data of each row
     while($row = mysqli_fetch_assoc($iresult)) {

       echo "<div class='panel-group'>";
        echo "<div class='panel panel-default'>";
        echo "<div class='panel-heading'>";
        echo "<b>Title: " . $row["info_title"] ."</b>";
        echo "</div>";
        echo "<div class='panel-body'>";
        echo "<span>" . $row["info_desc"] ."</span>";
        echo "</div>";
        echo "<div class='panel-footer'>";
        echo "<span>Posted Date: <b>".$row["Date"]."</b><br>
        <span>Posted By: <b>".$row["info_admin_email"]."</b><br>
        <span><b>".$row["info_admin_name"]."</b><br>
        <span><b>".$row["role"]."</b>
        </span>      
              ";
        echo "</div>";
        echo "</div></div>"; 
     }
} else {
     echo "<center class='well'><strong><img src='images/res/tired.png' alt='I'm so tired of searching!/><br>Sry!<br><br>no results found<br><br>check after sometime</strong></center>";
}

//mysqli_close($conn);

?>
<!-- /info -->
    </div>
  </div>
</div>

<div class="container-fluid stafab" onclick="closeBav()">
<span onclick="scrollToTop();return false">
<i class="fa fa-chevron-up" style="font-size:36px"></i>
<!--
<i class="fa fa-arrow-up" style="font-size:36px"></i>
-->
</div>





</body>
</html>
