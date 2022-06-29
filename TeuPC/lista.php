<?php
include_once "includes/_db.php";
include_once "includes/head.php";
include_once "includes/header.php";
?>


<?php

$codigo = $_GET["cat"];

$sql="SELECT 
p.PecaID,
p.Preco,
p.Imagem AS ImagemPeca,
p.Preco AS PrecoPeca,
p.Nome AS NomePeca,
c.Nome AS NomeCategoria,
cp.Nome AS NomeCampo,
pc.DadoCampo AS Descricao
FROM `pecascampos` AS pc
INNER JOIN pecas AS p
ON pc.PecaID = p.PecaID
INNER JOIN categorias AS c
ON p.CategoriaID = c.CategoriaID
AND pc.CategoriaID = c.CategoriaID
INNER JOIN campos AS cp
ON cp.CampoID = pc.CampoID
WHERE c.CategoriaID = $codigo LIMIT 1";
$sql2="SELECT * FROM categorias WHERE CategoriaID = $codigo";

$resultado = mysqli_query( $conn , $sql);
$resultado2 = mysqli_query( $conn , $sql2);
$resultado3 = mysqli_query( $conn , $sql2);
?>


<div class="container"> 
  <?php 
  if($resultado){
    while($row = mysqli_fetch_array($resultado))
    echo '<br>'.'<center>'.'<h2 style="color: white;">'.$row['NomeCategoria'].'</h2>'.'</center>';
  }
  
  ?>
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
  <?php 
  } 
  ?>

  </thead>
</table>
</div>
    


<?php
include_once "includes/footer.php";
?>