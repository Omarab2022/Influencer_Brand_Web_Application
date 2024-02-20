<?php
session_start();
session_destroy();
// Redirect to the main page after destroying the session
header("location: ../pageprinc.php");
exit();
?>
