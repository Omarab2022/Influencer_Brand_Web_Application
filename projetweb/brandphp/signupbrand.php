<?php
require "./connectionbrand.php";
$p=new crud("inflbrand","localhost:3308","root","");
// Check if the submission form is posted
if(isset($_POST["submition"])){
$username=$_POST["username"];
$chiffre=$_POST["CA"];
$email=$_POST["email"];
$photo=$_POST["photo"];
// Hash the password using a secure algorithm
$password=$_POST["password"];
 // Insert the data into the database
$hashed_password = password_hash($password, PASSWORD_DEFAULT); // hash the password using a secure algorithm
$p->insertData($username, $chiffre, $email, $hashed_password, $photo);
// Redirect to the brand page
header("location: brand.php");
}
?>