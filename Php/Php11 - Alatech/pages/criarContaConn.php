<?php
require_once ("conn.php");
$nome = $_REQUEST['nome'];
$senha = $_REQUEST['senha'];
$exec ="INSERT INTO `user`(`username`, `password`) VALUES ('$nome' , '$senha')";
$result = mysqli_query($conn,$exec);

if($result){
    echo "<script>alert('Usuario cadastrado com sucesso!');window.location.href='../index.php'</script>";
}else{
    echo "<script>alert('Opa parece que deu algo de errado, tente novamente ou reporte!');window.location.href='criarConta.php'</script>";
}