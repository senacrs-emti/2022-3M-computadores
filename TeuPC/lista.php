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

$resultado = mysqli_query( $conn , $sql);
$row = mysqli_fetch_array($resultado);
?>

<?php
$tabLista = 1 ; 
if($codigo = $codigo){
  echo '<br>'.'<center>'.'<h2 style="color: white;">'.$row['NomeCategoria'].'</h2>'.'</center>';
  while($row = mysqli_fetch_array($resultado)){

  } 
}
?>

<div class="container"> 
<table class="table" style="color: white">
  <thead>
      <th scope="col">ID</th>
      <th scope="col">Nome</th>
      <th scope="col">Socket</th>
      <th scope="col">Frequencia</th>
      <th scope="col">Nucleos</th>
      <th scope="col">Consumo</th>
      <th scope="col">Preço</th>
      <th scope="col">Imagem</th>
  </thead>

</table>
</div>


<?php 
  $tablista = 1; 
  if($codigo = $resultado){
    while($row = mysqli_fetch_array($resultado)){ 
      echo '</tbody>'.'<tr>'.'<th scope="row">1</th>'.'<td>'.$row['NomePeca'].'</td>'.'<td>'.'</td>'.'<td>@mdo</td>'.'<td>@mdo</td>'.'<td>@mdo</td>'.'<td>'.'R$ '.$row['Preco'].'</td>'.'<td>'.'<img style="height:60px; width:60px; background-image:none ;" src="imagens/'.$row['ImagemPeca'].'".>'.'</td>'.'</tr>'.'</tbody>';
    }
  } 
 ?>
    
</table>
</div>


<div class="footer">
<?php
include_once "includes/footer.php";
?>
</div>