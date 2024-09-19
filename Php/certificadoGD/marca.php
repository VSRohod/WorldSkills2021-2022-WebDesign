<?php
$nome = $_REQUEST['nome'];
$curso = $_REQUEST['curso'];
$carga = $_REQUEST['carga'];
$tmp_assinatura = $_FILES['assinatura']['tmp_name'];
$nome_assinatura = $_FILES['assinatura']['name'];
$tipo_assinatura = $_FILES['assinatura']['type'];
$tmp_certificado = $_FILES['certificado']['tmp_name'];
$img_certificado = imagecreatefromjpeg($tmp_certificado);

$img_assinatura = imagecreatefromjpeg($tmp_assinatura);
$w = imagesx($img_assinatura);
$h = imagesy($img_assinatura);

imagecopymerge($img_certificado,$img_assinatura, 300 , 800 , 0 , 0, 10000, $w , $h);

$tamanho_fonte = 20;
$angulo = 0;
$fonte = 'SFMono-Regular.otf';
$preto = imagecolorallocate($img_certificado, 0x00 ,0x00, 0x00);
//nome
$x = 200; $y = $h + 250;
imagettftext($img_certificado, $tamanho_fonte, $angulo, $x , $y , $preto , $fonte, $nome);
$x1 = 200; $y1 = $h + 400;
imagettftext($img_certificado, $tamanho_fonte, $angulo, $x1 , $y1, $preto , $fonte, $curso);
$x2 = 200; $y2 = $h + 500;
imagettftext($img_certificado, $tamanho_fonte, $angulo, $x2 , $y2 , $preto , $fonte, $carga);

$dados = getimagesize($tmp_certificado);
$qualidade = 100;

header('Content-Type: image/jpeg');
imagejpeg($img_certificado, null, $qualidade);
?>