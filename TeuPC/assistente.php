<?php
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
    <input type="radio" name="options" id="option1" autocomplete="off" checked> Intel
  </label>
  <label class="btn btn-secondary">
    <input type="radio" name="options" id="option2" autocomplete="off"> AMD
  </label>
</div>

<br>
    <br>
    <h3>Placa de vídeo dedicada?</h3>

    <div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="radio" name="options" id="option1" autocomplete="off" checked> Sim
  </label>
  <label class="btn btn-secondary">
    <input type="radio" name="options" id="option2" autocomplete="off"> Não
  </label>
</div>

<br>
    <br>
    <h3>Como seria o pagamento?</h3>

    <div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="radio" name="options" id="option1" autocomplete="off" checked> A Prazo
  </label>
  <label class="btn btn-secondary">
    <input type="radio" name="options" id="option2" autocomplete="off"> Á Vista
  </label>
</div>

<br>
    <br>
    <h3>Qual seria o preço desejado?</h3>
    <div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="radio" name="options" id="option1" autocomplete="off" checked> 3mil
  </label>
  <label class="btn btn-secondary">
    <input type="radio" name="options" id="option2" autocomplete="off"> 5mil
  </label>
  <label class="btn btn-secondary active">
    <input type="radio" name="options" id="option3" autocomplete="off"> 7mil
  </label>
  <label class="btn btn-secondary">
    <input type="radio" name="options" id="option4" autocomplete="off"> 10mil+
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



