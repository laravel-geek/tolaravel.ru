<?php
session_start();

//$counter = ($_POST['counter']) + 1;

$_SESSION['counter']  = ((int)($_SESSION['counter']) + 1);

// $_SESSION['counter'] = $counter;
header("Location: /task_15.php");
exit;

?>