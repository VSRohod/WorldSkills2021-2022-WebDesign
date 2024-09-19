<?php
    session_start();
    require_once "../pages/conn.php";
    $event_id = $_SESSION['event_id_sessao'];
    $name = $_REQUEST['name'];
    $cost = $_REQUEST['cost'];
    $special_validity = $_REQUEST['special_validity'];
    // $amount = $_REQUEST['amount'];
    // $valid_until = $_REQUEST['valid_until'];
    $mysqli = "INSERT INTO event_tickets (`name`, cost, special_validity, event_id) VALUES ('$name',$cost,'$special_validity',$event_id)";
    $execute = mysqli_query($conn, $mysqli);
    if(isset($execute)){
        echo "<script>alert('Deu certo');location.href='../events/detail.php?event_id=$event_id'</script>";

    }else{
        echo "<script>alert('Nao deu certo');location.href='create.php';</script>";
    }
?>