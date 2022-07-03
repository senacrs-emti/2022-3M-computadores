<?php
include_once "includes/_db.php";
include_once "includes/head.php";
include_once "includes/header.php";

$codigo = $_GET["cat"];
$codigo2 = $_GET["cate"];
$fr = $codigo2 + 1;
$i=1;
$a=0;
$r=5;


$resultado1 = mysqli_query( $conn , "SELECT * FROM pecas"); ?>



<?php
include_once "includes/footer.php";
?>