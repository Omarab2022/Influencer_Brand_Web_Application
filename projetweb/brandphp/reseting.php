<?php
require "./connectionbrand.php";
$p=new crud("inflbrand","localhost:3308","root","");
session_start();
// Get user ID and email from session
$id = $_SESSION["id"];
$email=$_SESSION["email"];
// Check if the reset form is submitted
$hashed_password = $p->getHashedPassword($email);
if(isset($_POST["reset"])){
  $password = $_POST["password"];
  $password1 = $_POST["password1"];
  $password2 = $_POST["password2"];
  $hashed_password1 = password_hash($password1, PASSWORD_DEFAULT);
  // Update the brand's data in the database
  if(password_verify($password, $hashed_password)){ // compare the hashed password with user input
    $p->updateUserpassword($id, $hashed_password1);
    $login_err="";
    session_start(); 
   $_SESSION["password"] = $password1;
    header("location: mesinfos.php");
} else{
$login_err = " verify the password you entered";
header("location: resetpassword.php?login_err=" . urlencode($login_err));
}
}
?>