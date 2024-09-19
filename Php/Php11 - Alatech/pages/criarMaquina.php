<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alatech</title>
    <link rel="stylesheet" href="../css/geral.css" type="text/css">
    <link rel="stylesheet" href="../css/home&criarMaquina.css" type="text/css">
</head>
<body>
    <header>
        <h2 id="logo">ALATECH</h2>
        <a href="logout.php" id="logoff">LOG OFF</a>
    </header>
    
    <button id="criarMaquina" type="button">EDITAR MAQUINA</button>
    <button id="excluirMaquina" type="button">EXCLUIR MAQUINA</button>
    <a href="home.php"><button id="voltar" type="button">VOLTAR</button></a>

    <div id="corpo">
        <div id="efeitoEscurecer">
            <div id="placaMae" class="peca">
                <div id="imgDiv">
                    <img src="" alt="">
                </div>
                <span>PLACA MÃE</span>
            </div>
            <div id="processador" class="peca">
            <div id="imgDiv">
                    <img src="" alt="">
                </div>
                <span>PROCESSADOR</span>
            </div>
            <div id="memoriaRam" class="peca">
                <div id="imgDiv">
                    <img src="" alt="">
                </div>
                <span>MEMÓRIA RAM</span>
            </div>
            <div id="placaDeVideo" class="peca">
                <div id="imgDiv">
                    <img src="" alt="">
                </div>
                <span>PLACA DE VIDEO</span>
            </div>
            <div id="dispositivoArmazenamento" class="peca">
                <div id="imgDiv">
                    <img src="" alt="">
                </div>
                <span>DISPOSITIVO DE ARMAZENAMENTO</span>
            </div>
            <div id="fonte" class="peca">
                <div id="imgDiv">
                    <img src="" alt="">
                </div>
                <span>FONTE</span>
            </div>
        </div>
    </div>
    <footer>Todos os direitos reservados a @Alatech</footer>
    <script src="../js/criarMaquina.js"></script>
</body>
</html>