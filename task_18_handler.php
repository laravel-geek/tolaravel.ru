<?php
// session_start();
echo '<pre>';
var_dump($_FILES);
echo '</pre>';

$newfilename = uniqid().'.jpg';

move_uploaded_file($_FILES['image']['tmp_name'],'uploads/'.$newfilename);


$pdo = new PDO('mysql:host=localhost;dbname=tolaravel','root','root');
$hashed_password = password_hash($password, PASSWORD_DEFAULT);

$sql = "INSERT INTO task18_images (image) VALUES (:image)";
$statement = $pdo->prepare($sql);
$statement ->execute(['image' => $newfilename]);
header("Location: /task_18.php");



?>