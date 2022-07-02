<?php
include_once "includes/_db.php";
include_once "includes/head.php";
include_once "includes/header.php";
?>
<?php
$tipocpu = $_POST['CPU'];
$sql = "SELECT * FROM pecascamps WHERE CategoriaID = 1"
$resultado = mysqli_query( $conn , $sql);
if ($resultado) {

}
  
  # code...
} 

}
$cpu = $_POST['CPU'];
$preco = $_POST['preco'];
$placa = $_POST['placa'];
$npreco = '';
if ($tempo == 'parcelado') {
$parcela = 'Em até 12x sem juros';
}else {
$parcela = 'Em apanas 1x';
}
if ($placa == 'sem') {
$plca = 'Sem placa de video integrada';
}else {
$plca = 'Com placa de video integrada';
}
if ($cpu == 'intel') {
$nome = 'Computador com Intel';
}else {
$nome = 'Computador com AMD';
}
switch ($preco) {
    case 4:
        $npreco = 'R$4.000,00';
      break;
    case 6:
        $npreco = 'R$6.000,00';
      break;
    case 8:
        $npreco = 'R$8.000,00';
      break;
    case 11:
        $npreco = 'R$11.000,00';
      break;
}



?>
<br>
       <br>
       <center>
 <div class="card card2" style="width: 500px; height:500px; margin-left: -5px;" class="col-sm-3 col-md-3 col-lg-3 col-xl-3"> 
       <img class="card-img-top2" style="width: 500px; height:500px;" src="imagens/nave.jpg" alt="Imagem de capa do card">
     <div class="card-body2">
       <h5 class="card-title2"><?php echo $nome; ?></h5>
       <p class="card-text2"><?php echo $plca; ?></p>
            <p class="card-text2-preco"><?php echo $npreco; ?></p>
            <p class="card-text2"><?php echo $parcela; ?></p>
       <a href="https://www.pichau.com.br/" class="btn btn-primary2">Comprar</a>
       </div>
       <br>
       <br>
       </div>
       <center>

<div class="footer">
<?php
include_once "includes/footer.php";
?>
</div>


