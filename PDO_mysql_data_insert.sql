<?php

if(isset($_POST["submit"])){
  $hostname='localhost';
  $username='login';
  $password='password';
try {
  $dbh = new PDO("mysql:host=$hostname;dbname=dbname",$username,$password);
  $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // <== add this line
  $sql = "INSERT INTO #tablename (link, description)
  
VALUES ('".$_POST["#column"]."','".$_POST["#column"]."')";

if ($dbh->query($sql)) {
  echo "<script type= 'text/javascript'>alert('New Record Inserted Successfully');</script>";
}

else{
  echo "<script type= 'text/javascript'>alert('Data not successfully Inserted.');</script>";
}

$dbh = null;
}

catch(PDOException $e)

{
echo $e->getMessage();}
header("refresh: 2; url=http://localhost/dbinsert.php");
}
?>
