<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alimenta</title>
    <link rel="stylesheet" href="/css/geral.css" type="text/css">
    <link rel="stylesheet" href="/css/diario.css" type="text/css">
</head>
<body>
    <div id="resolucao">
        <header>
            <div id="more">-</div>
            <h3>Diario</h3>
            <div id="Search"></div>
            <div id="points">:</div>
        </header>
        <div id="day">
            <h2>DATA: <?php echo date('d/m/y');?></h2>
        </div>

        <div id="dados">
            <h4>CALORIAS CONSUMIDAS: X</h4>
            <div id="grafico">
                <img src="/images/grafico.jpg" alt="" id="graficoImg">
            </div>
        </div>

        <button id="recomendacaoButton" type="button">DESEJA UMA RECOMENDAÇÃO?</button>
        <div id="recomendacao">
            <img src="/images/grafico2.jpg" alt="" id="graficoImgRecomendacao">
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
    <source src="/js/diario.js">
</body>
</html>
