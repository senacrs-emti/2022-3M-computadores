<?php
include_once "includes/_db.php";
include_once "includes/head.php";
include_once "includes/header.php";
?>

<br>
<br>

<center>
    <h1 style>Como você deseja o TEU PC ?</h1>
    <br>
    <h3>Qual processador?</h3>

    <div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="radio" name="intel" id="intel" autocomplete="off"> Intel
  </label>
  <label class="btn btn-secondary">
    <input type="radio" name="amd" id="amd" autocomplete="off"> AMD
  </label>
</div>

<br>
    <br>
    <h3>Placa de vídeo dedicada?</h3>

    <div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="radio" name="sim" id="sim" autocomplete="off"> Sim
  </label>
  <label class="btn btn-secondary">
    <input type="radio" name="nao" id="nao" autocomplete="off"> Não
  </label>
</div>

<br>
    <br>
    <h3>Como seria o pagamento?</h3>

    <div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="radio" name="prazo" id="prazo" autocomplete="off"> A Prazo
  </label>
  <label class="btn btn-secondary">
    <input type="radio" name="vista" id="vista" autocomplete="off"> Á Vista
  </label>
</div>

<br>
    <br>
    <h3>Qual seria o preço desejado?</h3>
    <div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="radio" name="3mil" id="3mil" autocomplete="off"> 3mil
  </label>
  <label class="btn btn-secondary">
    <input type="radio" name="5mil" id="5mil" autocomplete="off"> 5mil
  </label>
  <label class="btn btn-secondary active">
    <input type="radio" name="7mil" id="7mil" autocomplete="off"> 7mil
  </label>
  <label class="btn btn-secondary">
    <input type="radio" name="10+" id="10+" autocomplete="off"> 10mil+
  </label>
</div>

<div class="has-text-centered">
  <button class="button is-success is-medium mt-5">
    <span class="has-text-weight-bold">Montar TEU PC!</span>
  </button>
</div>

</center>


<div class="footer1">

<?php

include_once "includes/footer.php";

?>

</div>



