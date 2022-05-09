<?php

include_once '../includes/_db.php';
include_once '_head.php';
 if (isset($_GET['id']) || !empty($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM usuario WHERE UsuarioID = ".$id;
    $resultado = mysqli_query($conn,$sql);
    $dados = mysqli_fetch_array($resultado,MYSQLI_ASSOC);
 }else{
     $id= '';
     $dados['NomeCompleto'] = '';
     $dados['Email'] = '';
     $dados['Senha'] = '';
 }

 Include_once '_menu.php';
 ?>
    <main>
        <h2>Administração dos Usuarios</h2>
        <a href="usuario-lista.php?senha=salva">Listagem</a>
        <hr>
        <form action="usuario-processa.php?" method="post" enctype="multipart/form-data">
            <input type="hidden" value="salvar" name="acao">
            <input type="text" name="id" value="<?php echo $id; ?>"><br>
            <label for="nome">Nome:</label><br>
            <input type="text" id="nome" name="nome" value="<?php echo $dados['NomeCompleto']; ?>"><br>
            <label for="email">Email:</label><br>
            <textarea id="email" name="email"><?php echo $dados['Email']; ?></textarea><br>
            <label for="senha">Senha:</label><br>
            <textarea id="senha" name="senha"><?php echo $dados['Senha']; ?></textarea><br>
            <hr>
            <input type="submit" value="Enviar">
        </form>
    </main>
<?php
Include_once '_footer.php';
?>