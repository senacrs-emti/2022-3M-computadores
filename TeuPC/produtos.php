<?php
include_once "includes/_db.php";
include_once "includes/head.php";
include_once "includes/header.php";
?>

  <!-- The slideshow/carousel -->
<?php 
foreach($teupc as $valor)

?>

</div>
<?php
$sql = "SELECT * FROM pcpronto";    
$resultado = mysqli_query($conn, $sql);
?>        
<!-- PRODUTOS CAROUSEL -->
<div id="demo2" class="carousel slide" data-bs-ride="carousel">

  <!-- The slideshow/carousel -->


  <div class="carousel-inner">
  <div class="carousel-item active">
    

  
<?php
         $pcs = 1;
         $fecha = 1;
         while($row = mysqli_fetch_array($resultado)){
         

       echo '<div class="card card2" style="width: 18rem; margin-left: -5px;" class="col-sm-3 col-md-3 col-lg-3 col-xl-3">';   
       echo '<img class="card-img-top2"src="imagens/'.$row['Imagem'].'" alt="Imagem de capa do card">';
       echo '<div class="card-body2">';
       echo  '<h5 class="card-title2">'.$row['Nome'].'</h5>';
       echo   '<p class="card-text2">'.$row['CPU'].'</p>
            <p class="card-text2">'.$row['PlacaVD'].'</p>
            <p class="card-text2-preco">R$'.$row['Preco'].'</p>';
       echo     '<a href="'.$row['produtoID'].'" class="btn btn-primary2">Comprar</a>';
       echo '</div>';
       echo '<br>';
       echo '<br>';
       echo '</div>';
          $fecha++;
          $pcs++; 
         };
          ?>
          
        

      </div>
    </div>

  </div>

<?php

include_once "includes/footer.php";

?>