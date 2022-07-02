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
p.PecaID,
pc.Descricao
FROM pecascampos AS pc
INNER JOIN pecas AS p
ON pc.PecaID = p.PecaID
INNER JOIN categorias AS c
ON p.CategoriaID = c.CategoriaID
AND pc.CategoriaID = c.CategoriaID
INNER JOIN campos AS cp
ON cp.CampoID = pc.CampoID
WHERE c.CategoriaID = $codigo";



$resultado = mysqli_query( $conn , $sql);

$result = mysqli_query( $conn , "SELECT * FROM pecascampos WHERE PecaID = 1");
$row_cnt = mysqli_num_rows($result);
echo $row_cnt;
?>

<div class="container"><table class="table" style="color: white"><thead>
  <?php 
$i=1;
    while($row = mysqli_fetch_array($resultado)){ 
      if ($i <= $row_cnt) { ?>
        <th scope="col"></th><th scope="col"><?php echo $row['NomeCampo']; ?></th>
        <?php    $i++;
      } } ?></thead>
    </div>
  
   






    