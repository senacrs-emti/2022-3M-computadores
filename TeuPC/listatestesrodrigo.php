<?php
include_once "includes/_db.php";
include_once "includes/head.php";
include_once "includes/header.php";
?>


<?php

$codigo = $_GET["cat"];

$sql="SELECT 
p.PecaID,
p.Imagem AS ImagemPeca,
p.Preco AS PrecoPeca,
p.Nome AS NomePeca,
c.Nome AS NomeCategoria,
cp.Nome AS NomeCampo,
pc.DadoCampo AS Descricao,
p.Preco
FROM `pecascampos` AS pc
INNER JOIN pecas AS p
ON pc.PecaID = p.PecaID
INNER JOIN categorias AS c
ON p.CategoriaID = c.CategoriaID
AND pc.CategoriaID = c.CategoriaID
INNER JOIN campos AS cp
ON cp.CampoID = pc.CampoID
WHERE c.CategoriaID = $codigo";
$sql2="SELECT * FROM pecascampos WHERE PecaID = $codigo";

$resultado = mysqli_query( $conn , $sql);
$resultado2 = mysqli_query( $conn , $sql2);
$resultado3 = mysqli_query( $conn , $sql2);
?>


<div class="container"> 
<table class="table" style="color: white">
  <thead>
<?php 
$row3 = mysqli_fetch_array($resultado3);

print_r($row3);


while ($row2 = mysqli_fetch_array($resultado2)) { ?>
  <th scope="col"><?php if ($row2['Descricao'] == 'CpuID') {
   echo 'Marca';
  }else{ echo $row2['Descricao'] ;}
   ?></th>
  <?php } ?>

  </thead>

</table>
</div>
    


<?php
include_once "includes/footer.php";
?>