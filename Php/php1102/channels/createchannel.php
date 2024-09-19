<?php
    session_start();
    $event_id = $_SESSION['event_id_sessao'];
    require_once "../pages/conn.php";
    $name = $_REQUEST['name'];
    $mysqli = "INSERT INTO channels (`name`,event_id) VALUES ('$name',$event_id)";
    $execute = mysqli_query($conn, $mysqli);
    if(isset($execute)){
        echo "<script>alert('Gravado Channel com sucesso!');location.href='../events/detail.php?event_id=$event_id'';</script>";

    }else{
        echo "<script>alert('Nao deu certo');location.href='create.php';</script>";
    }
?>