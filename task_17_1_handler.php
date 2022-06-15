<?php
session_start();

unset ($_SESSION['user']);
header("Location: /task_17.php");
exit;

?>