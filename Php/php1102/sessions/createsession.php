<?php
    require_once "../pages/conn.php";
    $type = $_REQUEST['type'];
    $title = $_REQUEST['title'];
    $speaker = $_REQUEST['speaker'];
    $room = $_REQUEST['room'];
    $cost = $_REQUEST['cost'];
    $start = $_REQUEST['start'];
    $end = $_REQUEST['end'];
    $description = $_REQUEST['description'];
    $event_id = $_SESSION['event_id_sessao'];
    $mysqli = "INSERT INTO `sessions` (`title` , `description`, `speaker`,`start`, `end`, `type`, `cost`,room_id) VALUES ('$title','$description', '$speaker','$start','$end','$type',$cost,$room)";
    $execute = mysqli_query($conn, $mysqli);
    if(isset($execute)){
        echo "<script>alert('Gravado com Sucesso!');location.href='./events/detail.php?event_id=$event_id'</script>";
    }else{
        echo "<script>alert('Nao deu certo');location.href='create.php';</script>";
    }
?>