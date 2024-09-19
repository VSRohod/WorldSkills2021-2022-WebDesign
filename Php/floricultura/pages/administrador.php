<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrador - Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<?php
        if (isset($_SESSION['sessao_email'])){
    ?>
    <h1>Bem vindo a Dasboard, <?php echo $_SESSION['sessao_nome'];?></h1>
    <h2><?php echo $_SESSION['sessao_email']; ?></h2>
    <div  class="alert alert-primary" role="alert"><?php echo $_SESSION['sessao_perfil'];?></div>
    <h3><a href="fecharsessao.php">Sair</a></h3>
    <?php
       }else{
           echo "Faça o login novamente!!! - ";
           echo "<a href='../index.html'>Entrar</a>";
       }
    ?>

    <a href="cadastrarcliente.html">
        <button type="button" class="btn btn-primary">
            Adicionar Usuários</button>
    </a>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Opção</th>
            <th scope="col">E-mail</th>
            <th scope="col">Nome Completo</th>
            <th scope="col">CPF</th>
            <th scope="col">Telefone</th>
            <th scope="col">Data de Nascimento</th>
            <th scope="col">Endereço</th>
            <th scope="col">Perfil</th>
        </tr>
        </thead>
        <tbody>
    <?php
        $conectar = mysqli_connect("localhost","root","","floricultura") 
                        or die("Erro ao conectar com BD");

        $sql = "SELECT * FROM cliente;";

        $execute = mysqli_query($conectar,$sql) 
                        or die("Erro ao rodar a instrução SQL");

        while ($linha = mysqli_fetch_array($execute)){
            $email = $linha['email'];
            echo "<tr>";
            echo "<td>";
            echo "<a href='editarcliente.php?email=$email'>Editar</a> | ";
            echo "<a href='deletarcliente.php?email=$email'>Excluir</a>";
            echo "</td>";
            echo "<th scope='row'>",$linha['email'],"</th>";
            echo "<td>",$linha['nome'],"</td>";
            echo "<td>",$linha['cpf'],"</td>";
            echo "<td>",$linha['telefone'],"</td>";
            echo "<td>",$linha['dtnasc'],"</td>";
            echo "<td>",$linha['endereco'],"</td>";
            echo "<td>",$linha['perfil'],"</td>";
            echo "</tr>";
        }

        mysqli_close($conectar);

    ?>
        </tbody>
    </table>

    <!-- Web Service ViaCep -->
    <form>
        <label for="cep">CEP:</label>
        <input type="text" name="cep" id="cep" placeholder="Digite um cep com 8 digitos (ex: 35300300)" pattern="[0-9]{8}">
        <input type="submit" id="pesquisacep" nmae="pesquisacep" value="Pesquisar CEP">
    </form>

    <?php
        if(isset($_REQUEST['cep'])){
            $cep = $_REQUEST['cep'];
            $string = "https://viacep.com.br/ws/$cep/json";
            $url = file_get_contents($string);
            $json = json_decode($url);
            echo "<form>";
            echo "  <label for='logradouro'>Logradouro</label>
                    <input type='text' id='logradouro' name='logradouro' value='$json->logradouro'>";
            echo "  <label for='complemento'>Complemento</label>
                    <input type='text' id='complemento' name='complemento' value='$json->complemento'>";
            echo "  <label for='numero'>Numero</label>
                    <input type='number' id='numero' name='numero'";         
            echo "</form>";
        }
    ?>


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
        $('.alert').alert();
    </script>
</body>
</html>