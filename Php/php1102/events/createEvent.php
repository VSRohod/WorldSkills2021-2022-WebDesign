<?php
    require_once "../pages/conn.php";
    $name = $_REQUEST['name'];
    $slug = $_REQUEST['slug'];
    $date = $_REQUEST['date'];
    $organizador = $_REQUEST['inputOrganizador'];
    $mysqli = "INSERT INTO events (nome, slug, dataHoje, organizer_id) VALUES ('$name','$slug','$date', $organizador)";
    $execute = mysqli_query($conn, $mysqli);
    if(isset($execute)){
        echo "<script>alert('Deu certo');location.href='../events/index.php';</script>";

    }else{
        echo "<script>alert('Nao deu certo');location.href='create.php';</script>";
    }
?>