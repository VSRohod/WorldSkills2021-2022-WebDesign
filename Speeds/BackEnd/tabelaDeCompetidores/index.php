
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>4</title>
</head>
<body>
    <table>
        <tr>
            <td>ID</td>
            <td>Nome do competidor</td>
            <td>E-mail</td>
            <td>Ocupação</td>
            <td>Estado</td>
        </tr>
        <?php
            $server = "localhost";
            $db = "competidores";
            $password = "";
            $user = "root";
            $conn = mysqli_connect($server,$user,$password,$db) or die("erro con");
            $sql = "SELECT * FROM `competidores` WHERE 1" or die("erro sql");
            $execute = mysqli_query($conn, $sql) or die("erro execute");
            while ($linha = mysqli_fetch_array($execute)){
                $id = $linha['id'];
                $nome = $linha['nome_competidor'];
                $email = $linha['email'];
                $ocupacao = $linha['ocupacao'];
                $estado = $linha['estado_sigla'];
                echo"<tr>
                        <td>$id</td>
                        <td>$nome</td>
                        <td>$email</td>
                        <td>$ocupacao</td>
                        <td>$estado</td>
                    </tr>";
            }
        ?>
    </table>
</body>
</html>