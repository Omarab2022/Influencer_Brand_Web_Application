<?php
require "./connectionbrand.php";
$p=new crud("inflbrand","localhost:3308","root","");
session_start();
// Get user ID and username from session
$id = $_SESSION["id"];
$username=$_SESSION["username"];
// Set the value for influencerORbrand
$influencerORbrand="brand";
// Insert supplementary data into the database
    $p->insertsuppdata($username, $influencerORbrand);
    // Redirect to the mesinfos page
    header("location: mesinfos.php");
?>
