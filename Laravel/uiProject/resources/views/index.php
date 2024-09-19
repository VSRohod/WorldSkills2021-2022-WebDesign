<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alimenta</title>
    <link rel="stylesheet" href="/css/geral.css" type="text/css">
    <link rel="stylesheet" href="/css/index.css" type="text/css">
</head>
<body>
    <div id="resolucao">
        <div id="background">
            <div id="color">
                <h2>ALIMENTA</h2>
                <div id="telaLogin">
                    <form action="#">
                        <label for="email">Email:</label>
                        <input type="email" name="email" id="email"><br><br>
                        <label for="senha">Senha:</label>
                        <input type="password" name="senha" id="senha"><br><br>
                        <a href="<?php echo url('diario') ?>"><button type="button">Enviar</button></a>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <source src="/js/index.js">
</body>
</html>
