<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alimenta</title>
    <link rel="stylesheet" href="/css/geral.css" type="text/css">
    <link rel="stylesheet" href="/css/historico.css" type="text/css">
</head>
<body>
    <div id="resolucao">
        <header>
            <div id="more">-</div>
            <h3>Histórico</h3>
            <div id="Search"></div>
            <div id="points">:</div>
        </header>
        <div id="icon">
            <img src="/images/" alt="">
        </div>
        <div id="dados">
            <h2>HISTÓRICO</h2>
            <ul>
                <a href="#"><li>Data: xx/ xx / xxxx</li></a>
                <a href="#"><li>Data: xx/ xx / xxxx</li></a>
                <a href="#"><li>Data: xx/ xx / xxxx</li></a>
                <a href="#"><li>Data: xx/ xx / xxxx</li></a>
                <a href="#"><li>Data: xx/ xx / xxxx</li></a>
            </ul>
        </div>
        <footer>
            <nav id="navegacao">
                <ul>
                    <a href="<?php echo url('historico') ?>"><li>Histórico</li></a>
                    <a href="<?php echo url('diario') ?>"><li>Diário</li></a>
                    <a href="<?php echo url('dieta') ?>"><li>Dieta</li></a>
                    <a href="<?php echo url('social') ?>"><li>Social</li></a>
                </ul>
            </nav>
        </footer>
    </div>
    <source src="/js/historico.js">
</body>
</html>
