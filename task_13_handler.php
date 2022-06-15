<?php
session_start();

$email = $_POST['email'];
$password = $_POST['password'];

$pdo = new PDO('mysql:host=localhost;dbname=tolaravel','root','root');

$sql = "SELECT * FROM task13 WHERE email=:email";
$statement = $pdo->prepare($sql);
$statement ->execute(['email' => $email]);
$user = $statement->fetch(PDO::FETCH_ASSOC);

if(!empty($user)) {
$_SESSION['error'] = "Этот эл адрес уже занят другим пользователем";
header("Location: /task_13.php");
exit;
}

$hashed_password = password_hash($password, PASSWORD_DEFAULT);

$sql = "INSERT INTO task13 (email, password) VALUES (:email, :password)";
$statement = $pdo->prepare($sql);
$statement ->execute(['email' => $email, 'password' => $hashed_password]);
header("Location: /task_13.php");
exit;
?>