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
$resultado2 = mysqli_query( $conn , "SELECT
p.Imagem AS ImagemPeca,
p.Preco AS PrecoPeca,
p.Nome AS NomePeca,
c.Nome AS NomeCategoria,
c.CategoriaID AS CategoriaID, 
cp.Nome AS NomeCampo,
pc.DadoCampo AS DadoCampo,
pc.Descricao
FROM pecascampos AS pc
INNER JOIN pecas AS p
ON pc.PecaID = p.PecaID
INNER JOIN categorias AS c
ON p.CategoriaID = c.CategoriaID
AND pc.CategoriaID = c.CategoriaID
INNER JOIN campos AS cp
ON cp.CampoID = pc.CampoID
WHERE c.CategoriaID = $codigo");

$resultado3 = mysqli_query( $conn , "SELECT
p.Imagem AS ImagemPeca,
p.Preco AS PrecoPeca,
p.Nome AS NomePeca,
c.Nome AS NomeCategoria,
c.CategoriaID AS CategoriaID, 
cp.Nome AS NomeCampo,
pc.DadoCampo AS DadoCampo,
pc.Descricao
FROM pecascampos AS pc
INNER JOIN pecas AS p
ON pc.PecaID = p.PecaID
INNER JOIN categorias AS c
ON p.CategoriaID = c.CategoriaID
AND pc.CategoriaID = c.CategoriaID
INNER JOIN campos AS cp
ON cp.CampoID = pc.CampoID
WHERE c.CategoriaID = $codigo");
?>


<div class="container"><table class="table" style="color: white">
<?php 
    if($row = mysqli_fetch_array($resultado)){ 
      echo'<center>'.'<h1>'.$row['NomeCategoria'].'</h1>'.'</center>';
      echo '<br>';
    }
?>
<thead>
<th scope="col">Nome</th>
  <?php 
  while($row2 = mysqli_fetch_array($resultado3)){ 
    if ($i <= $codigo2) { ?>
       <th scope="col">
        <?php if ($row2['NomeCampo'] == 'CpuID') {
          echo 'Marca';
        } else {
          echo $row2['NomeCampo']; 
        }?>
      </th>
       <?php     $i++; 
    } 
  }  
?>
<th scope="col">Preço</th>
<th scope="col">Imagem</th>
</thead>
  <tbody>
    <tr>
    <?php 
    while ($row3 = mysqli_fetch_array($resultado2)) {   
      if ($a < 1) { ?>
        <td><?php echo $row3['NomePeca']; ?></td>
     <?php }
    if ($a == $codigo2) {?>
      <tr><td><?php echo $row3['NomePeca']; ?></td>
      <?php } 
    if ($row3['NomeCampo'] == 'CpuID') {
      switch ($row3['DadoCampo']) {
        case '1':
          echo '<td>Intel</td>';
          break;
        case '2':
          echo '<td>AMD</td>';
          break;
      }
    }else{
        echo '<td>'.$row3['DadoCampo'].'</td>';
      }

    $a++;
    
    if ($a == $codigo2) {
      ?><td><?php echo $row3['PrecoPeca']; ?></td><td><img style="height:60px; width:60px; background-image:none ;" src="imagens/<?php echo $row3['ImagemPeca']; ?>"></td></tr><?php
    }if ($a == $fr) {
      $a = 1;
    }

       }
 ?>
  </tbody>
</table>
</div>
  
   



<?php
include_once "includes/footer.php";
?>