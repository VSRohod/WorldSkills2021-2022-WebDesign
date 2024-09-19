<?php
    $DBCONN= "localhost";
    $DBUSER= "root";
    $DBPASSWORD= "";
    $DBNAME= "php1102";

    $conn = mysqli_connect($DBCONN,$DBUSER,$DBPASSWORD,$DBNAME) or die("erro na connection");
    
