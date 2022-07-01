<?php
include_once "includes/_db.php";
include_once "includes/head.php";
include_once "includes/header.php";
?>


<?php

$codigo = $_GET["cat"];
$codigo2 = $_GET["cate"];

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
WHERE c.CategoriaID = $codigo AND p.PecaID = $codigo2";



$resultado = mysqli_query( $conn , $sql);
$row2 = mysqli_fetch_array($resultado);
echo '<br>'.'<center>'.'<h2 style="color: white;">'.$row2['NomeCategoria'].'</h2>'.'</center>';
?>


  <?php 


  if($resultado){
    while($row = mysqli_fetch_array($resultado)){

      echo '<div class="container">'.'<table class="table" style="color: white">'.'<thead>'.'<th scope="col">'.'</th>'.'<th scope="col">'.$row['NomeCampo'].'</th>'.'<th scope="col">'.$row['NomeCampo'].'</th>'.'<th scope="col">'.$row['NomeCampo'].'</th>'.'<th scope="col">'.$row['NomeCampo'].'</th>'.'<th scope="col">Consumo</th>'.'<th scope="col">Preço</th>'.'<th scope="col">Imagem</th>'.'</thead>';
      echo '<tbody>'.'<tr>'.'<th scope="row">1</th>'.'<td>'.$row['NomePeca'].'</td>'.'<td>'.$row['DadoCampo '].'</td>'.'<td>'.$row['DadoCampo'].'</td>'.'<td>'.$row['DadoCampo'].'</td>'.'<td>'.$row['DadoCampo'].'</td>'.'<td>'.'R$ '.$row['PrecoPeca'].'</td>'.'<td>'.'<img style="height:60px; width:60px; background-image:none ;" src="imagens/'.$row['Descricao'].'".>'.'</td>'.'</tr>'.'</tbody>'.'</table>'.'</div>';

    }
  }
?>


<?php
include_once "includes/footer.php";
?>