<?php
// Abrindo uma imagem do formulário escolhendo.
$tmp_name = $_FILES['arquivo']['tmp_name'];
$name = $_FILES['arquivo']['name'];
$tipo = $_FILES['arquivo']['type'];
$tmp_marca = $_FILES['arqmarca']['tmp_name'];
$img = imagecreatefromjpeg($tmp_name);

//Criando a marca d'agua

$img_marca = imagecreatefrompng($tmp_marca);
$w = imagesx($img_marca);
$h = imagesy($img_marca);

imagecopymerge($img, $img_marca, 10, 10, 0, 0, 100, $w, $h);

// texto na imagem
// Escreve o texto na imagem em preto
$tamanho_fonte = 20;
$angulo = 0;
$x = 10; $y = $h+30; // abaixo da imagem
$preto = imagecolorallocate($img, 0x00, 0x00, 0x00);
$fonte = 'SFMono-Regular.otf';
imagettftext($img, $tamanho_fonte, $angulo, $x, $y, $preto, $fonte, $_REQUEST['texto']);


// Obter dados do arquivo de imagem
$dados = getimagesize($tmp_name);

// qualidade da imagem
$qualidade = 100; // valor entre 0-100

// destino da imagem
//$destino = "midias/".$name.".".$tipo;

// gerar a imagem
header('Content-Type: image/jpeg');
imagejpeg($img, null, $qualidade);
?>