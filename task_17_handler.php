<?php
session_start();

$email = $_POST['email'];
$password = $_POST['password'];

$pdo = new PDO('mysql:host=localhost;dbname=tolaravel','root','root');

$sql = "SELECT * FROM task13 WHERE email=:email";
$statement = $pdo->prepare($sql);
$statement ->execute(['email' => $email]);
$user = $statement->fetch(PDO::FETCH_ASSOC);

if(empty($user)) {
$_SESSION['error'] = "Неверный логин";
header("Location: /task_17.php");
exit;

} else {
    // проверить пароль
    if (!(password_verify($password, $user['password']))){
       $_SESSION['error'] = "Неверный пароль";
       header("Location: /task_16.php");
       exit;
    } else {
        $_SESSION['error'] = "Вы авторизованы. Ваш логин: $email";
        $_SESSION['user'] = "$email";
        header("Location: /task_17.php");
        exit;
    }

exit;

}
?>