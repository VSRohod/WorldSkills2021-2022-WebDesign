<?php
session_start();
if ($_SESSION['sessao_perfil']==='cliente')
    $email = $_SESSION['sessao_email'];
else
    $email = $_REQUEST['email'];

$conectar = mysqli_connect("localhost","root","","floricultura") 
                    or die("Erro ao conectar com BD");

$sql = "DELETE FROM cliente WHERE email = '$email'";

$execute = mysqli_query($conectar,$sql) or die("Erro ao deletar");
switch($_SESSION['sessao_perfil']){
    case 'cliente':
    case 'convidado':
    case 'funcionario':    
        echo "<script>alert('Deletado com sucesso!!!');
    location.href='../index.html';</script>";break;
    case 'administrador':echo "<script>alert('Deletado com sucesso!!!');
    location.href='administrador.php';</script>";
}


?>