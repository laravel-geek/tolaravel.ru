<?php
session_start();

$text = $_POST['text'];

$_SESSION['text'] = $_POST['text'];


header("Location: /task_14.php");
exit;

?>