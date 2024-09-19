<?php
session_start();
// Passo1: Pegar os dados digitados do formulário 
$nome = $_REQUEST['nome'];
$telefone = $_REQUEST['telefone'];
$cpf = $_REQUEST['cpf'];
$dtnasc = $_REQUEST['dtnasc'];
$senha = $_REQUEST['senha'];
if ($_SESSION['sessao_perfil']==='cliente')
    $email = $_SESSION['sessao_email'];
else 
    $email = $_REQUEST['email'];

// Passo2: Conectar BD
$conectar = mysqli_connect("localhost","root","","floricultura")
            or die("Erro ao conectar");

// Passo3: sql do update (atualizar) 
$sql = "UPDATE cliente SET nome = '$nome', telefone='$telefone',
                cpf = '$cpf', dtnasc='$dtnasc', senha ='$senha'
                WHERE email = '$email'";
$execute = mysqli_query($conectar,$sql) 
    or die("Erro ao atualizar");

switch($_SESSION['sessao_perfil']){
    case 'cliente':echo "<script>alert('Atualizado com sucesso');
    location.href='cliente.php';</script>";break;
    case 'administrador':echo "<script>alert('Atualizado com sucesso');
    location.href='administrador.php';</script>";break;
    case 'convidado':echo "<script>alert('Atualizado com sucesso');
    location.href='convidado.php';</script>";break;
    case 'funcionario':echo "<script>alert('Atualizado com sucesso');
    location.href='funcionario.php';</script>";break;
}

?>