<?php
session_start();
session_destroy(); // retira as variáveis da sessão
echo "<script>alert('Sessão Finalizada!!!');
            location.href='../index.html';</script>";

?>