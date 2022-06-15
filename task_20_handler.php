<?php
// session_start();
/*echo '<pre>';
var_dump($_FILES);
echo '</pre>';
*/

for ($i=0; $i < count($_FILES['image']['name']); $i++ ) {

    upload_file($_FILES['image']['name'][$i], $_FILES['image']['tmp_name'][$i]);
}




function upload_file($file, $tmp_name){

$newfilename = uniqid().'.jpg';
move_uploaded_file($tmp_name,'uploads/'.$newfilename);


$pdo = new PDO('mysql:host=localhost;dbname=tolaravel','root','root');
$sql = "INSERT INTO task18_images (image) VALUES (:image)";
$statement = $pdo->prepare($sql);
$statement ->execute(['image' => $newfilename]);

};




header("Location: /task_20.php");

?>