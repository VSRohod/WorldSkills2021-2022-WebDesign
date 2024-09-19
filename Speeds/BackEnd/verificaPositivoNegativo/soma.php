<?php
$numero = $_REQUEST['numero'];

if($numero<0 && $numero!=0){
    echo "Número negativo";
}
if($numero==0){
    echo "Número zero";
}else{
    echo "Número positivo";
}
?>