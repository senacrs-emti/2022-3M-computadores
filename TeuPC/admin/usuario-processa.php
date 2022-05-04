<?php

Include_once '../includes/_db.php';

$acao = $_REQUEST['acao'];
$id = $_REQUEST['id'];

switch ($acao) {
    case 'excluir':
        $sql = "DELETE FROM usuario WHERE UsuarioID = ".$id;
        mysqli_query($conn,$sql);
        header('location: ./usuario-lista.php?senha=salva');
        break;
    
    case 'salvar':
        $nome = $_POST['nome'];
        $email = $_POST['email'];
        $senha = $_POST['senha'];
        
        

        if (!isset($_POST['id']) || empty($_POST['id'])) {
           $sql = "INSERT INTO `usuario`(`NomeCompleto`, `Email`, `Senha`) VALUES ('".$nome."','".$email."','".$senha."')";
        }else{
            $sql = "UPDATE `usuario` SET `NomeCompleto`='".$nome."', `Email`='".$email."',`Senha`='".$senha."' WHERE `UsuarioID`='".$id."' ";
        }
        mysqli_query($conn,$sql);
        header('location: ./usuario-lista.php?senha=salva');
        break;
}