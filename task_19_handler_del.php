<?php
// session_start();
echo '<pre>';
var_dump($_GET['f']);
echo '</pre>';

$filename = ($_GET['f']);

$pdo = new PDO('mysql:host=localhost;dbname=tolaravel','root','root');

$sql = "DELETE FROM task18_images WHERE image = :filename";
$statement = $pdo->prepare($sql);
$statement ->execute(['filename'=> $filename]);

unlink ("uploads/$filename");

header("Location: /task_19.php");




?>