<?php
    session_start();
    require_once "../pages/conn.php";
    if (isset($_REQUEST['event_id'])){
        $id = $_REQUEST['event_id'];
        $sql = "SELECT * FROM events WHERE ID = $id";
        $execute = mysqli_query($conn, $sql);
        $row = mysqli_fetch_array($execute);
        $nome = $row['nome'];            
        $dataHoje = $row['dataHoje'];
        $_SESSION['event_id_sessao'] = $id;
        $_SESSION['event_nome_sessao'] = $nome;          
        $_SESSION['event_dataHoje_sessao'] = $data;          
    }else{
        $id = 0;
        $nome ="";
        $dataHoje="";
    }
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Event Backend</title>

    <base href="../">
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles -->
    <link href="assets/css/custom.css" rel="stylesheet">
</head>

<body>
<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="events/index.php">Event Platform</a>
    <span class="navbar-organizer w-100"><?php echo $_SESSION['nome_sessao'];?></span>
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" id="logout" href="index.php">Sign out</a>
        </li>
    </ul>
</nav>

<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item"><a class="nav-link" href="events/index.php">Manage Events</a></li>
                </ul>

                <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                    <span><?php echo $_SESSION['nome_sessao']; ?></span>
                </h6>
                <ul class="nav flex-column">
                    <li class="nav-item"><a class="nav-link active" href="events/detail.php">Overview</a></li>
                </ul>

                <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                    <span>Reports</span>
                </h6>
                <ul class="nav flex-column mb-2">
                    <li class="nav-item"><?php echo "<a class='nav-link' href='./reports/index.php?nome=$nome&dataHoje=$dataHoje'>Room capacity</a>"?></li>
                </ul>
            </div>
        </nav>
        
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="border-bottom mb-3 pt-3 pb-2 event-title">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                    <h1 class="h2"><?php echo $nome ?></h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group mr-2">
                            <?php echo "<a href='events/edit.php?event_id=$id' class='btn btn-sm btn-outline-secondary'>Edit event</a>"?>
                        </div>
                    </div>
                </div>
                <span class="h6"><?php echo $dataHoje ?></span>
            </div>

            <!-- Tickets -->
            <div id="tickets" class="mb-3 pt-3 pb-2">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                    <h2 class="h4">Tickets</h2>
                    <div class="btn-toolbar mb-2 mb-md-0">
                                <div class="btn-group mr-2">
                                    <?php echo "<a href='tickets/create.php?nome=$nome&dataHoje=$dataHoje' class='btn btn-sm btn-outline-secondary'> Create new ticket </a>" ?>
                                </div>
                            </div>
                </div>
            

                <div class="row tickets">
                <?php
                    $sql = "SELECT * FROM event_tickets WHERE event_id=$id";
                    $execute = mysqli_query($conn,$sql);

                    while($row = mysqli_fetch_array($execute)){
                    $name = $row['name'];
                    $cost = $row['cost'];
                    echo "<div class='col-md-4'>
                            <div class='card mb-4 shadow-sm'>
                                <div class='card-body'>
                                    <h5 class='card-title'>$name</h5>
                                    <p class='card-text'>$cost.-</p>
                                    <p class='card-text'>&nbsp;</p>
                                </div>
                            </div>
                        </div>";
                    }
                ?>
            </div>
            <!-- Sessions -->
            <br>
            <div id="sessions" class="mb-3 pt-3 pb-2" >
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                    <h2 class="h4">Sessions</h2>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group mr-2">
                            <?php echo "<a href='sessions/create.php?nome=$nome&dataHoje=$dataHoje' class='btn btn-sm btn-outline-secondary'>Create new session </a>" ?>
                        </div>
                    </div>
                </div>
            

                <div class="table-responsive sessions">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>Time</th>
                            <th>Type</th>
                            <th class="w-100">Title</th>
                            <th>Speaker</th>
                            <th>Channel</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                            $sql = "SELECT s.title,s.speaker,s.start,s.end,c.name as canal, r.name as sala FROM sessions as s,rooms as r, channels as c, events as e where s.room_id = r.id and r.channel_id = c.id and c.event_id=e.id and c.event_id = $id";
                            $execute = mysqli_query($conn,$sql);

                            while($row = mysqli_fetch_array($execute)){
                                $title = $row['title'];
                                $speaker = $row['speaker'];
                                $start = $row['start'];
                                $end = $row['end'];
                                $channel = $row['canal'];
                                $room = $row['sala'];
                                echo "<tr>
                                        <td class='text-nowrap'>$start - $end</td>
                                        <td>Talk</td>
                                        <td><a href='sessions/edit.php'>$title</a></td>
                                        <td class='text-nowrap'>$speaker</td>
                                        <td class='text-nowrap'>$channel / $room</td>
                                    </tr>";
                                }
                        ?>  
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Channels -->
            <div id="channels" class="mb-3 pt-3 pb-2">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                    <h2 class="h4">Channels</h2>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group mr-2">
                            <?php echo "<a href='channels/create.php?nome=$nome&dataHoje=$dataHoje' class='btn btn-sm btn-outline-secondary'> Create new channel </a>" ?>
                        </div>
                    </div>
                </div>
            

                <div class="row channels">
                    <?php
                        $sql = "SELECT * FROM channels WHERE event_id=$id";
                        $execute = mysqli_query($conn,$sql);

                        while($row = mysqli_fetch_array($execute)){
                        $name = $row['name'];
                        $idchannel = $row['id'];
                        $sqlroom = "SELECT id, COUNT(id) AS room FROM rooms WHERE channel_id = $idchannel ";
                        $executeroom = mysqli_query($conn,$sqlroom);
                        $rowroom = mysqli_fetch_array($executeroom);
                        $room = $rowroom['room'];
                        $idroom = $rowroom['id'];
                        $testaridroom = isset($idroom)?$idroom: 0 ;
                        $sqlsession = "SELECT COUNT(id) AS session FROM sessions WHERE room_id = $testaridroom";
                        $executesession = mysqli_query($conn, $sqlsession);
                        $rowsession = mysqli_fetch_array($executesession);
                        $session = $rowsession['session'];
                        echo "<div class='col-md-4'>
                                <div class='card mb-4 shadow-sm'>
                                    <div class='card-body'>
                                        <h5 class='card-title'>$name</h5>
                                        <p class='card-text'>$session sessions, $room room</p>
                                    </div>
                                </div>
                            </div>";
                        }
                    ?>
            </div>
            <!-- Rooms -->
            <div id="rooms" class="mb-3 pt-3 pb-2">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                    <h2 class="h4">Rooms</h2>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group mr-2">
                            <?php echo "<a href='rooms/create.php?nome=$nome&dataHoje=$dataHoje' class='btn btn-sm btn-outline-secondary'> Create new room </a>" ?>
                        </div>
                    </div>
                </div>
            

                <div class="table-responsive rooms">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Capacity</th>
                            </tr>
                            </thead>

                            <?php
                            $sqlallroom = "SELECT r.name,r.capacity FROM rooms as r, channels as c, events as e WHERE r.channel_id = c.id and c.event_id = e.id and e.id = $id";
                            // echo $sqlallroom;
                            $executeallroom = mysqli_query($conn,$sqlallroom);
            
                            while($rowallroom = mysqli_fetch_array($executeallroom)){
                            $name = $rowallroom['name'];
                            $capacity = $rowallroom['capacity'];
                            echo "<tr>
                                    <td>$name</td>
                                    <td>$capacity</td>
                                </tr>";
                            }
                            ?>
                            <tbody>
                        </table>
                    </div>
            </div>

        </main>
    </div>
</div>

</body>
</html>
