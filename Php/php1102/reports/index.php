<?php
    session_start();
    require_once "../pages/conn.php";
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
                    <li class="nav-item"><a class="nav-link" href="events/detail.php">Overview</a></li>
                </ul>

                <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                    <span>Reports</span>
                </h6>
                <ul class="nav flex-column mb-2">
                    <li class="nav-item"><a class="nav-link active" href="reports/index.php">Room capacity</a></li>
                </ul>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="border-bottom mb-3 pt-3 pb-2">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                    <h1 class="h2"><?php echo $_SESSION['event_nome_sessao'];?></h1>
                </div>
                <span class="h6"><?php echo $_SESSION['event_dataHoje_sessao'];?></span>
            </div>

            <div class="mb-3 pt-3 pb-2">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                    <h2 class="h4">Room Capacity</h2>
                </div>
            </div>

            <!-- TODO create chart here -->
            <?php 
                require "../pages/graficoDaSala.php";
            ?>

        </main>
    </div>
</div>

</body>
</html>
