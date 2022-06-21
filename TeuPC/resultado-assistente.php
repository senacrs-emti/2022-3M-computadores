<?php
include_once "includes/_db.php";
include_once "includes/head.php";
include_once "includes/header.php";
?>
<?php
$cpu = $_POST['CPU'];
$preco = $_POST['preco'];
$npreco = '';

if ($cpu == 'intel') {
$nome = 'Computador com Intel';
}else {
$nome = 'Computador com AMD';
}
switch ($preco) {
    case 4:
        $npreco = 'R$4.000,0';
      break;
    case 6:
        $npreco = 'R$6.000,0';
      break;
    case 8:
        $npreco = 'R$8.000,0';
      break;
    case 11:
        $npreco = 'R$11.000,0';
      break;
}



?>
<br>
       <br>
 <div class="card card2" style="width: 18rem; margin-left: -5px;" class="col-sm-3 col-md-3 col-lg-3 col-xl-3"> 
       <img class="card-img-top2"src="imagens/nave.jpg" alt="Imagem de capa do card">
     <div class="card-body2">
       <h5 class="card-title2"><?php echo $nome; ?></h5>
            <p class="card-text2-preco"><?php echo $npreco; ?></p>
       <a href=".$row['produtoID']." class="btn btn-primary2">Comprar</a>
       </div>
       <br>
       <br>
       </div>

<?php
include_once "includes/footer.php";
?>
</div>


