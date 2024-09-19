<?php
    require_once "conn.php";
    $event_id = $_SESSION['event_id_sessao'];
    $sql = "SELECT r.name,r.capacity, count(sr.registration_id) as registrados FROM rooms as r, sessions as s, channels as c, session_registrations as sr, registrations as re, events as e WHERE r.id = s.room_id and sr.session_id = s.id AND re.id = sr.registration_id AND c.id = r.channel_id and c.event_id=e.id and e.id=$event_id group by r.name;";
    $execute = mysqli_query($conn, $sql);
    // $allrow = mysqli_fetch_all($execute);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<canvas id="grafico" width="900" height="900">
        <script>
            var c = document.getElementById('grafico');
            var ctx = c.getContext('2d');
            ctx.font = "30px Arial";

            
            var grd = ctx.createLinearGradient(0, 0, 200, 0);
            grd.addColorStop(0, 'red');
            grd.addColorStop(1, 'white');

        <?php     
        $altura = 30;
        $x = 10;
        $y = 40;
        while ($linha = mysqli_fetch_array($execute)){
            $largura = $linha ['capacity'];  
            $sala = $linha ['name'];
            $registrados = $linha ['registrados'];
            echo "
            var grd = ctx.createLinearGradient(0, 0, $largura, 0);
            grd.addColorStop(0, 'red');
            grd.addColorStop(1, 'red');
            var grd1 = ctx.createLinearGradient(0,0,$registrados,0);
            grd1.addColorStop(0, 'blue');
            grd1.addColorStop(1, 'blue');
            ctx.fillStyle = grd;
            ctx.fillText('$sala - $largura', $x + $registrados,$y);
            ctx.fillRect($x,$y,$largura, $altura);
            ctx.fillStyle = grd1;
            ctx.fillText($registrados, $x, $y);
            ctx.fillRect($x,$y,$registrados, $altura);";
            $y+=70;
        }

        ?>
        </script>
</body>
</html>