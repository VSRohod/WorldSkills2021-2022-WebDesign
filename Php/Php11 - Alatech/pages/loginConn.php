<?php
session_start();
require_once "conn.php";
$nome = $_REQUEST['nome'];
$senha = $_REQUEST['senha'];
$exec = "SELECT `username`, `password` FROM `user` WHERE username='{$nome}' and password='{$senha}'";
$result = mysqli_query($conn,$exec);
header('Location:home.php');
 