<?php
include_once "includes/_db.php";
include_once "includes/head.php";
include_once "includes/header.php";
?>


<?php
$codigo = $_GET["cat"];

$sql = "SELECT * FROM categorias WHERE CategoriaID = $codigo";
$pecas = "SELECT * FROM pecas WHERE CategoriaID = $codigo";
$campos = "SELECT * FROM campos WHERE CategoriaID = $codigo";



$resultado = mysqli_query( $conn , $sql);
$resultado2 = mysqli_query($conn, $pecas);
$resultado3 = mysqli_query($conn, $campos);

?>

<?php
$tabLista = 1 ; 
if($resultado){
   while($row = mysqli_fetch_array($resultado)){
    echo'<a href="lista.php?cat='.$row['CategoriaID'].'" tabindex="'.$tabLista.'">'.'</a>';
    echo '<br>'.'<center>'.'<h2 style="color: white;">'.$row['Nome'].'</h2>'.'</center>';
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
  <?php $tablista = 1; 
  if($resultado2) 
    while($row =mysqli_fetch_array($resultado2)){ 
      echo '</tbody>'.'<tr>'.'<th scope="row">1</th>'.'<td>'.$row['Nome'].'</td>'.'<td>'.'</td>'.'<td>@mdo</td>'.'<td>@mdo</td>'.'<td>@mdo</td>'.'<td>'.'R$'.$row['Preco'].'</td>'.'<td>'.$row['Imagem'].'</td>'.'</tr>'.'</tbody>';
    }?>
</table>
</div>




<div class="footer">
<?php
include_once "includes/footer.php";
?>
</div>