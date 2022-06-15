<?php
include_once "includes/_db.php";
include_once "includes/head.php";
include_once "includes/header.php";
?>

<div class= "main"> 
<div class="row">  
<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

  <!-- Indicators/dots -->
  
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>

  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="imagens/coisalinda.jpg" alt="Los Angeles" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="imagens/coisalinda2.jpg" alt="Chicago" class="d-block w-100">
    </div>
    <div class="carousel-item">
      <img src="imagens/coisalinda3.jpg" alt="New York" class="d-block w-100">
    </div>
  </div>

  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
</div>

<br>
<br>

<div class="card" style="height: 331px">
  <img class="card-img-top" src="imagens/card1.png" alt="Imagem de capa do card" style="height: 335px">
  <div class="card-body">
    <h5 class="card-title" style="color: white">TEUPC, A Maneira mais facil de montar um!</h5>
    <p class="card-text">Conte conosco para montar o teu melhor PC de forma fácil e rápida. Mais de 100 peças selecionadas a dedo visando qualidade e confiança.
    </p>
    <a href="assistente.php" class="btn btn-primary">Teu Assistente!</a>
  </div>
</div>

<hr/> 
<hr/>

</div>


<div class="Texto1">

<h2>O melhor assistente para você montar seu PC</h2>
<p>Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum </p>


</div>

<div class="button1">
<button type="button" class="btn btn-success">Monte teu PC</button>
</div>

<br>

<div class="Texto1" style="margin-top: 0px;">

<h2>Ofertas</h2>

</div>

<!-- PRODUTOS CAROUSEL -->
<div id="demo2" class="carousel slide" data-bs-ride="carousel">

  <!-- The slideshow/carousel -->


  <div class="carousel-inner">
    <div class="carousel-item active">
      <div class="card card2" style="width: 18rem; margin-left: -5px;">
        <img class="card-img-top2" src="imagens/card1.png" alt="Imagem de capa do card">
        <div class="card-body2">
          <h5 class="card-title2">Nome do produto </h5>
          <p class="card-text2">Descrição e informações detalhadas do produto e estou enchendo esse texto para se ter uma ideia de como ficaria</p>
          <p class="card-text2-preco">R$ 1500</p>
          <a href="#" class="btn btn-primary2">Comprar</a>
        </div>
      </div>

      <div class="card card2" style="width: 18rem; margin-left: 15px;">
        <img class="card-img-top2" src="imagens/produto1.jpg" alt="Imagem de capa do card">
        <div class="card-body2">
          <h5 class="card-title2">Nome do produto </h5>
          <p class="card-text2">Descrição e informações detalhadas do produto e estou enchendo esse texto para se ter uma ideia de como ficaria</p>
          <p class="card-text2-preco">R$ 1500</p>
          <a href="#" class="btn btn-primary2">Comprar</a>
        </div>
      </div>

      <div class="card card2" style="width: 18rem; margin-left: 20px;">
        <img class="card-img-top2" src="imagens/produto1.jpg" alt="Imagem de capa do card">
        <div class="card-body2">
          <h5 class="card-title2">Nome do produto </h5>
          <p class="card-text2">Descrição e informações detalhadas do produto e estou enchendo esse texto para se ter uma ideia de como ficaria</p>
          <p class="card-text2-preco">R$ 1500</p>
          <a href="#" class="btn btn-primary2">Comprar</a>
        </div>
      </div>

      <div class="card card2" style="width: 18rem; margin-left: 20px;">
        <img class="card-img-top2" src="imagens/card1.png" alt="Imagem de capa do card">
        <div class="card-body2">
          <h5 class="card-title2">Nome do produto </h5>
          <p class="card-text2">Descrição e informações detalhadas do produto e estou enchendo esse texto para se ter uma ideia de como ficaria</p>
          <p class="card-text2-preco">R$ 1500</p>
          <a href="#" class="btn btn-primary2">Comprar</a>
        </div>
      </div>
    </div>

    <div class="carousel-item">
    <div class="card card2" style="width: 18rem; margin-left: -5px;">
  <img class="card-img-top2" src="imagens/card1.png" alt="Imagem de capa do card">
  <div class="card-body2">
    <h5 class="card-title2">Nome do produto </h5>
    <p class="card-text2">Descrição e informações detalhadas do produto e estou enchendo esse texto para se ter uma ideia de como ficaria</p>
    <p class="card-text2-preco">R$ 1500</p>
    <a href="#" class="btn btn-primary2">Comprar</a>

  </div>
</div>


<div class="card card2" style="width: 18rem; margin-left: 25px;">
  <img class="card-img-top2" src="imagens/produto1.jpg" alt="Imagem de capa do card">
  <div class="card-body2">
    <h5 class="card-title2">Nome do produto </h5>
    <p class="card-text2">Descrição e informações detalhadas do produto e estou enchendo esse texto para se ter uma ideia de como ficaria</p>
    <p class="card-text2-preco">R$ 1500</p>
    <a href="#" class="btn btn-primary2">Comprar</a>

  </div>
</div>

<div class="card card2" style="width: 18rem; margin-left: 25px;">
  <img class="card-img-top2" src="imagens/produto1.jpg" alt="Imagem de capa do card">
  <div class="card-body2">
    <h5 class="card-title2">Nome do produto </h5>
    <p class="card-text2">Descrição e informações detalhadas do produto e estou enchendo esse texto para se ter uma ideia de como ficaria</p>
    <p class="card-text2-preco">R$ 1500</p>
    <a href="#" class="btn btn-primary2">Comprar</a>

  </div>
</div>

<div class="card card2" style="width: 18rem; margin-right: 10px;">
  <img class="card-img-top2" src="imagens/card1.png" alt="Imagem de capa do card">
  <div class="card-body2">
    <h5 class="card-title2">Nome do produto </h5>
    <p class="card-text2">Descrição e informações detalhadas do produto e estou enchendo esse texto para se ter uma ideia de como ficaria</p>
    <p class="card-text2-preco">R$ 1500</p>
    <a href="#" class="btn btn-primary2">Comprar</a>

  </div>
</div>

    </div>
  </div>

  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev prev2" type="button" data-bs-target="#demo2" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next next2" type="button" data-bs-target="#demo2" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
</div>



<div class="footer">

<?php

include_once "includes/footer.php";

?>

</div>

