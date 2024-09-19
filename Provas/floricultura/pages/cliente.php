<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cliente - Dashboard</title>
</head>
<body>
    <?php
        if (isset($_SESSION['sessao_email'])){
    ?>
    <h1>Bem vindo a Dasboard, <?php echo $_SESSION['sessao_nome'];?></h1>
    <h2><?php echo $_SESSION['sessao_email']; ?></h2>
    <h2><?php echo $_SESSION['sessao_perfil'];?></h2>
    <h3><a href="editarcliente.php">Editar Perfil</h3>
    <h3><a href="deletarcliente.php">Deletar Perfil</a></h3>
    <h3><a href="fecharsessao.php">Sair</a></h3>
    <?php
       }else{
           echo "Faça o login novamente!!! - ";
           echo "<a href='../index.html'>Entrar</a>";
       }
    ?>
    
</body>
</html>