<?php
session_start();  // instrução no início do arquivo.

$email = $_REQUEST['email'];
$senha = $_REQUEST['senha'];

$conectar = mysqli_connect("localhost","root","","floricultura")
    or die("Erro ao conectar");

$sql = "SELECT * FROM cliente 
        WHERE email = '$email' and senha='$senha' ";

$execute = mysqli_query($conectar,$sql) 
    or die("Erro ao selecionar");

$achou = mysqli_num_rows($execute) or die("<script>alert('Email, não encontrado');
location.href='cadastrarcliente.html';</script>");

if ($achou>0)
{
    $linha = mysqli_fetch_array($execute); // pegar o resultado do select consultado
    $nome = $linha['nome']; // pega o dado do nome da coluna na tabela
    $cpf = $linha['cpf']; // pega o dado cpf coluna na tabela
    $perfil = $linha['perfil']; // pega o dado pefil coluna na tabel 
    // colocar as variáveis na sessão para utilizar nas pages do aplicativo
    $_SESSION['sessao_email'] = $email;
    $_SESSION['sessao_nome'] = $nome;
    $_SESSION['sessao_cpf'] = $cpf;
    $_SESSION['sessao_perfil'] = $perfil;
    
    switch($perfil){
        case "cliente":header("location: cliente.php");break;
        case "administrador":header("location: administrador.php");break;
        case "convidado":header("location: convidado.php");break;
        case "funcionario":header("location: funcionario.php");break;
        default : echo "<script>alert('');
                    location.href='../index.html';</script>";
    }
        

}
else
    echo "<script>alert('Email, não encontrado');
        location.href='cadastrarcliente.html';</script>";
mysqli_close($conectar) or die("Erro ao fechar");


?>