<?php
include_once "includes/_db.php";
include_once "includes/head.php";
include_once "includes/header.php";
?>

<?php

$codigo= $_GET["cat"] ;

$id = $_REQUEST;

$sql = "SELECT * FROM processador WHERE categoriaID = $codigo";  

$resultado = mysqli_query( $conn , $sql);

?>

<center>
<div class="Texto1" style="margin-top: 0px;">

<?php 
$tabTabelas =1;
if($resultado){
   while($row = mysqli_fetch_array($resultado)){
    echo '<a href="lista.php?cat='.$row['categoriaID'].'" tabindex="'.$tabTabelas.'">';
    echo '</a>'. '<h1 style="margin-left: 30px;">' . '<center>' . '<br>'.$row ['Nome'] . '<br><br>' . '</h1>' . '</center>';
    $tabTabelas++;
}
}
?>

</div>
<center>

<div class="container"> 
<table class="table" style="color: white">
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col">Nome</th>
      <th scope="col">Marca</th>
      <th scope="col">Socket</th>
      <th scope="col">Frequencia</th>
      <th scope="col">Nucleos</th>
      <th scope="col">Consumo</th>
      <th scope="col">Preço</th>
      <th scope="col">Imagem</th>
    </tr>
  </thead>
  <tbody>
    <?php
  
    ?>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
  </tbody>
</table>
</div>




<div class="footer">
<?php
include_once "includes/footer.php";
?>
</div>