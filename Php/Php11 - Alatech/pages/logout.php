<?php
session_start();
session_destroy();
echo "<script>alert('Saindo de sua conta....');window.location.href='../index.php'</script>";
