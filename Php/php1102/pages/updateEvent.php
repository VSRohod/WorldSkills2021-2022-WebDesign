<?php
    session_start();
    require_once "../pages/conn.php";
    $inputName = $_REQUEST['inputName'];
    $inputSlug = $_REQUEST['inputSlug'];
    $inputDate = $_REQUEST['inputDate'];
    $id = $_SESSION['event_id_sessao'] ;
    $sql = "UPDATE events SET nome='$inputName',slug='$inputSlug',dataHoje='$inputDate' WHERE id='$id'";
    $execute = mysqli_query($conn, $sql) or die ("Erro no execute");
    if(isset($execute)){
        echo "<script>alert('Deu certo');location.href='../events/index.php';</script>";
    }else{
        echo "<script>alert('Nao deu certo');location.href='create.php';</script>";
    }   
?>