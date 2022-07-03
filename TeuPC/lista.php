<?php
include_once "includes/_db.php";
include_once "includes/head.php";
include_once "includes/header.php";
?>


<?php

$codigo = $_GET["cat"];

$sql="SELECT
p.Imagem AS ImagemPeca,
p.Preco AS PrecoPeca,
p.Nome AS NomePeca,
c.Nome AS NomeCategoria,
c.CategoriaID AS CategoriaID, 
cp.Nome AS NomeCampo,
pc.DadoCampo AS DadoCampo,
p.PecaID
FROM pecascampos AS pc
INNER JOIN pecas AS p
ON pc.PecaID = p.PecaID
INNER JOIN categorias AS c
ON p.CategoriaID = c.CategoriaID
AND pc.CategoriaID = c.CategoriaID
INNER JOIN campos AS cp
ON cp.CampoID = pc.CampoID
WHERE c.CategoriaID = $codigo";
$sql2="SELECT * FROM categorias WHERE CategoriaID = $codigo";

$resultado = mysqli_query( $conn , $sql);
$resultado2 = mysqli_query( $conn , $sql2);
?>

<?php 
    if($row = mysqli_fetch_array($resultado)){ 
      echo'<center>'.'<h1>'.$row['NomeCategoria'].'</h1>'.'</center>';
      echo '<br>';
    }
?>
  <?php 
  if($resultado){
    while($row = mysqli_fetch_array($resultado)){
      echo '<div class="container">'.'<table class="table" style="color: white">'.'<thead>'.'<th scope="col">'.'</th>'.'<th scope="col">'.$row['NomeCampo'].'</th>'.'<th scope="col">'.$row['NomeCampo'].'</th>'.'<th scope="col">'.$row['NomeCampo'].'</th>'.'<th scope="col">'.$row['NomeCampo'].'</th>'.$row['NomeCampo'].'<th scope="col">'.$row['NomeCampo'].'</th>'.'<th scope="col">'.$row['NomeCampo'].'</th>'.'<th scope="col">'.$row['NomeCampo'].'</th>'.'</thead>';
      echo '<tbody>'.'<tr>'.'<th scope="row">1</th>'.'<td>'.$row['NomePeca'].'</td>'.'<td>'.$row['DadoCampo'].'</td>'.'<td>'.$row['DadoCampo'].'</td>'.'<td>'.$row['DadoCampo'].'</td>'.'<td>'.$row['DadoCampo'].'</td>'.'<td>'.'R$ '.$row['PrecoPeca'].'</td>'.'<td>'.'<img style="height:60px; width:60px; background-image:none ;" src="imagens/'.$row['ImagemPeca'].'".>'.'</td>'.'</tr>'.'</tbody>'.'</table>'.'</div>';

    }
  }
?>


<?php
include_once "includes/footer.php";
?>