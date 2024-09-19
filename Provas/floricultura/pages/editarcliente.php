<?php
session_start();

$conectar = mysqli_connect("localhost","root","","floricultura") 
            or die("Error ao conectar");

if ($_SESSION['sessao_perfil']==='cliente')
    $email = $_SESSION['sessao_email'];
else
    $email = $_REQUEST['email'];

$sql = "SELECT * FROM cliente WHERE email = '$email'";

$execute = mysqli_query($conectar,$sql) or die("Erro ao consultar email");

$linha = mysqli_fetch_array($execute) or die("Erro ao pegar email");
$nome = $linha['nome'];
$cpf = $linha['cpf'];
$endereco=$linha['endereco'];
$dtnasc=$linha['dtnasc'];
$senha=$linha['senha'];
$telefone = $linha['telefone'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Perfil do Cliente</title>
</head>
<body>  
    <h1>Editando o perfil <?php echo $email;?></h1>
    <form action="atualizarcliente.php">
        <input type="hidden" id="email" name="email" 
                value="<?php echo $email;?>">
        <label for="nome">Nome Completo</label>
        <input type="text" id="nome" name="nome" 
            value="<?php echo $nome;?>"
            placeholder="Nome Completo">

        <label for="Senha">Senha</label>
        <input type="password" id="senha" name="senha"
            value="<?php echo $senha;?>"
            placeholder="Senha">
        
        <label for="cpf">CPF</label>
        <input type="text" id="cpf" name="cpf"
            value="<?php echo $cpf;?>"
            placeholder="CPF">
        
        <label for="tel">Telefone</label>
        <input type="tel" id="telefone" name="telefone"
            value="<?php echo $telefone;?>"
            placeholder="Telefone">
        
        <label for="dtnasc">Data de Nascimento</label>
        <input type="date" id="dtnasc" name="dtnasc"
            value="<?php echo $dtnasc;?>"
            placeholder="Data de Nascimento">       
        <input type="submit" id="atualizar" name="atualizar" 
            value="Atualizar">            
    </form>
</body>
</html>