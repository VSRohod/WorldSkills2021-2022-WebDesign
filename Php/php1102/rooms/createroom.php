<?php
session_start();
    require_once "../pages/conn.php";
    $name = $_REQUEST['name'];
    $channel = $_REQUEST['channel'];
    $capacity = $_REQUEST['capacity'];
    $mysqli = "INSERT INTO rooms (`name`, `capacity`, channel_id) VALUES ('$name','$capacity',$channel)";
    $execute = mysqli_query($conn, $mysqli);
    if(isset($execute)){
        $event_id = $_SESSION['event_id_sessao'];
        echo "<script>alert('Deu certo');location.href='../events/details.php?event_id=$event_id';</script>";
    }else{
        echo "<script>alert('Nao deu certo');location.href='create.php';</script>";
    }
?>