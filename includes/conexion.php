<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "blog_proyecto";
// crear conexion 

$db = mysqli_connect($servername,$username,$password,$database);
mysqli_query($db,"SET NAMES 'utf8");
// iniciar seción 
if(!isset($_SESSION)){
    session_start();
}
?>