<?php
include_once "includes/_db.php";
include_once "includes/head.php";
include_once "includes/header.php";
?>

<?php 
$sql="SELECT 
p.PecaID,
p.Imagem AS ImagemPeca,
p.Preco AS PrecoPeca,
p.Nome AS NomePeca,
c.Nome AS NomeCategoria,
cp.Nome AS NomeCampo,
pc.DadoCampo AS Campo,
p.Preco
FROM `pecascampos` AS pc
INNER JOIN pecas AS p
ON pc.PecaID = p.PecaID
INNER JOIN categorias AS c
ON p.CategoriaID = c.CategoriaID
AND pc.CategoriaID = c.CategoriaID
INNER JOIN campos AS cp
ON cp.CampoID = pc.CampoID";
?>




<br>
<center>
<h1 style>Como você deseja o TEU PC ?</h1>
<br>
  <h3>Qual processador?</h3>

       <form method="post" action="resultado-assistente.php">
    <div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="radio" name="CPU" id="CPU" value="1" autocomplete="off"> Intel</label>
  <label class="btn btn-secondary">
    <input type="radio" name="CPU" id="CPU" value="2" autocomplete="off"> AMD</label>
</div>

<br>
    <br>
    <h3>Placa de vídeo dedicada?</h3>

    <div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="radio" name="placa" id="placa" value="com" autocomplete="off"> Sim</label>
  <label class="btn btn-secondary">
    <input type="radio" name="placa" id="placa" value="sem" autocomplete="off"> Não</label>
</div>

<br>
    <br>
    <h3>Qual seria o preço desejado?</h3>
    <div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="radio" name="preco" id="preco" value="4" autocomplete="off"> 4mil</label>
  <label class="btn btn-secondary">
    <input type="radio" name="preco" id="preco" value="6" autocomplete="off"> 6mil</label>
  <label class="btn btn-secondary active">
    <input type="radio" name="preco" id="preco" value="8" autocomplete="off"> 8mil</label>
  <label class="btn btn-secondary">
    <input type="radio" name="preco" id="preco" value="11" autocomplete="off"> 11mil+</label>
</div>
<br>
    <br>
    <h3>Como seria o pagamento?</h3>

    <div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="radio" name="tempo" id="tempo" value="parcelado" autocomplete="off"> A Prazo</label>
  <label class="btn btn-secondary">
    <input type="radio" name="tempo" id="tempo" value="direto" autocomplete="off"> Á Vista</label>
</div>
<br>
<br>

<input class="btn btn-secondary" style="text-decoration: green;" type="submit" value="Montar" name="Montar">

</center>
<?php
include_once "includes/footer.php";
?>




