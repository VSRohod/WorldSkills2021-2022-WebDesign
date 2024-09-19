<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monte seu computador</title>
    <style>
        #escolha{
            width:70%;
            height:500px;
            background-color:#ccc;
            float:left;
        }

        #escolhido{
            width:30%;
            height: 500px;
            background-color:blue;
            float:right;
            color:white;
        }
        .artigo{
            width:200px;
            height:auto;
            border: 1px dotted red;
            background-color: blue;
            padding: 10px;
            margin:20px;
            color:white;
        }
    </style>
</head>
<body>
    <session id="escolha">
        <?php
            $servername = "localhost";
            $username = "root";
            $password = "";
            $conn = new PDO("mysql:host=$servername;dbname=alatechmachines",$username,$password);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            //SELECIONA A PLACA DE VIDEO

            $stmt = $conn->prepare("SELECT * FROM placadevideo");
            $stmt->execute();
            echo "<h1>Arraste a placa de video</h1>";
            $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
            $stmtjsonvideo = $stmt->fetchAll();
            foreach($stmt->fetchAll() as $linha){
                // var_dump($linha);
                echo "<article id='artigo1' class='artigo' draggable='true' ondragstart='drag(event)'>",$linha['placaVideoNome'],"</article>";
            }
            //SELECIONA A PLACA MAE

            $stmtmae = $conn->prepare("SELECT * FROM placamae");
            $stmtmae->execute();
            echo "<h1>Arraste a placa Mãe</h1>";
            $resultmae = $stmtmae->setFetchMode(PDO::FETCH_ASSOC);
            foreach($stmtmae->fetchAll() as $linhamae){
                // var_dump($linha);
                echo "<article id='artigo2'class='artigo' draggable='true' ondragstart='drag(event)'>",$linhamae['placaMaeNome'],"</article>";
            }

            //SELECIONA PROCESSADOR

            $stmtpro = $conn->prepare("SELECT * FROM processador");
            $stmtpro->execute();
            echo "<h1>Arraste o Processador</h1>";
            $resultpro = $stmtpro->setFetchMode(PDO::FETCH_ASSOC);
            foreach($stmtpro->fetchAll() as $linhapro){
                // var_dump($linha);
                echo "<article id='artigo3' class='artigo' draggable='true' ondragstart='drag(event)'>",$linhapro['processadorNome'],"</article>";
            }

            $arquivo = 'placavideo.json';
            $json = json_encode($stmtjsonvideo);
            $file = fopen(__DIR__ . '/' . $arquivo, 'w');
            fwrite($file,$json);
            fclose($file);
        ?>
        
    </session>
    <session id="escolhido" ondrop="drop(event)" ondragover="allowDrop(event)">
        <a href="pages/gerarjsonescolhido.php">Gerar Json</a>
    </session>

    <script>
        function allowDrop(ev) {
            ev.preventDefault();
        }

        function drag(ev) {
            ev.dataTransfer.setData("text", ev.target.id);
        }

        function drop(ev) {
            ev.preventDefault();
            var data = ev.dataTransfer.getData("text");
            ev.target.appendChild(document.getElementById(data));
        }
    </script>
</body>
</html>