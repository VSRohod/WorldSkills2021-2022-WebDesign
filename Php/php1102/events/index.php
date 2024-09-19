<?php
    session_start();
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
    <span class="navbar-organizer w-100"><?php echo "Nome: ",$_SESSION['nome_sessao'];?></span>
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" id="logout" href="./pages/logout.php">Sign out</a>
        </li>
    </ul>
</nav>

<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item"><a class="nav-link active" href="events/index.php">Manage Events</a></li>
                </ul>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Manage Events</h1>
                <div class="btn-toolbar mb-2 mb-md-0">
                    <div class="btn-group mr-2">
                        <a href="events/create.php" class="btn btn-sm btn-outline-secondary">Create new event</a>
                    </div>
                </div>
            </div>

            <div class="row events">
                        <?php
                            require_once "../pages/conn.php";
                            $organizer_id = $_SESSION['id_sessao'];
                            $sql = "SELECT * FROM events WHERE organizer_id=$organizer_id";
                            $execute = mysqli_query($conn, $sql);
                            while($row = mysqli_fetch_array($execute)){
                                $nome = $row['nome'];
                                $dataHoje = $row['dataHoje'];
                                $id = $row['id'];

                                $_SESSION['event_nome_sessao'] = $nome;
                                $_SESSION['event_dataHoje_sessao'] = $dataHoje;
                                $_SESSION['event_id_sessao'] = $id;

                                $sqlr = "SELECT COUNT(r.id) AS registrados FROM registrations AS r,event_tickets AS et WHERE et.event_id=$id AND et.id= r.ticket_id";
                                $executer = mysqli_query($conn,$sqlr);
                                $rowr = mysqli_fetch_array($executer);
                                $registrados = $rowr ['registrados'];
                                    echo "<div class=col-md-4>
                                            <div class='card mb-4 shadow-sm'>
                                                <a href='events/detail.php?event_id=$id' class='btn text-left event'>
                                                    <div class='card-body'>
                                                        <h5 class='card-title'>$id - $nome</h5>
                                                        <p class='card-subtitle'>$dataHoje</p>
                                                        <hr>
                                                        <p class='card-text'>$registrados</p>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>";     
                            }                    
                        ?>
            </div>

        </main>
    </div>
</div>

</body>
</html>
