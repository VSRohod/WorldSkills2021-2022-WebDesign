<?php
    session_start();
    require_once "../pages/conn.php";
    $email = $_REQUEST['email'];
    $password = $_REQUEST['password'];
    $mysqli = "SELECT * FROM organizers WHERE email='$email' AND password_hash='$password'";
    $execute = mysqli_query($conn, $mysqli) or die ("Erro no execute");
    $row = mysqli_fetch_array($execute) or die("Erro ao dar row");
    $id = $row['id'];
    $nome = $row['name'];
    $count = mysqli_num_rows($execute) or die("Erro ao dar Numrows");
    if ($count == 1){
        $_SESSION['email_sessao'] = $email;
        $_SESSION['id_sessao'] = $id;
        $_SESSION['nome_sessao'] = $nome;
        header("location: ../events/index.php");
    }else{
        echo ("Erro");
    }
?>