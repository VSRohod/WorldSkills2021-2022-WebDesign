<?php
// Passo 1: pegar as variáveis enviadas ao servidor pelo html
$email = $_REQUEST['email'];
$nome = $_REQUEST['nome'];
$cpf = $_REQUEST['cpf'];
$telefone = $_REQUEST['telefone'];
$senha = $_REQUEST['senha'];
$dtnasc = $_REQUEST['dtnasc'];

// Passo 2: conectar ao BD
$conectar = mysqli_connect("localhost","root","","floricultura") 
    or die("Não foi possível conectar com BD");


// Passo 3: inserir os dados na tabela do BD, usando comando SQL
$sql = "INSERT INTO cliente(email,nome,cpf,senha,dtnasc,telefone,endereco)
 VALUES ('$email','$nome','$cpf','$senha','$dtnasc','$telefone',null)";
$execute = mysqli_query($conectar,$sql) or die("Erro ao inserir");

// Passo 4: Mensagem de Sucesso no inserir
if ($execute)
    echo "<script>alert('Gravado com sucesso!!!!');location.href='../index.html';</script>";

// Passo 5: fechar o banco de dados
mysqli_close($conectar) or die("Não foi possível fechar o BD");


?>