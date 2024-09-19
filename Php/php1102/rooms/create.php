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
    <span class="navbar-organizer w-100"><?php echo "Nome: ".$_SESSION['event_nome_sessao'];?></span>
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
                    <span><?php echo $_SESSION['event_nome_sessao'];?></span>
                </h6>
                <ul class="nav flex-column">
                    <li class="nav-item"><a class="nav-link" href="events/detail.php">Overview</a></li>
                </ul>

                <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                    <span>Reports</span>
                </h6>
                <ul class="nav flex-column mb-2">
                    <li class="nav-item"><a class="nav-link" href="reports/index.php">Room capacity</a></li>
                </ul>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="border-bottom mb-3 pt-3 pb-2">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                    <h1 class="h2"><?php echo $_SESSION['event_nome_sessao'] ?></h1>
                </div>
                <span class="h6"><?php echo $_SESSION['event_dataHoje_sessao'] ?></span>
            </div>

            <div class="mb-3 pt-3 pb-2">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
                    <h2 class="h4">Create new room</h2>
                </div>
            </div>

            <form class="needs-validation" novalidate action="rooms/createroom.php">

                <div class="row">
                    <div class="col-12 col-lg-4 mb-3">
                        <label for="inputName">Name</label>
                        <!-- adding the class is-invalid to the input, shows the invalid feedback below -->
                        <input type="text" class="form-control" id="inputName" name="name" placeholder="" value="">
                        <div class="invalid-feedback">
                            Name is required.
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 col-lg-4 mb-3">
                        <label for="selectChannel">Channel</label>
                        <select class="form-control" id="selectChannel" name="channel">
                            <?php
                            $event_id = $_SESSION['event_id_sessao'];
                                $sql = "SELECT * FROM channels WHERE event_id=$event_id";
                                $execute = mysqli_query($conn,$sql);
                                while ($linha = mysqli_fetch_array($execute)){
                                    $channel_id = $linha['id'];
                                    $channel_name = $linha['name'];
                                    $channel_event = $linha['event_id'];
                                    echo "<option value='$channel_id'>$channel_name</option>";
                                }
                                mysqli_close($conn);
                            ?>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 col-lg-4 mb-3">
                        <label for="inputCapacity">Capacity</label>
                        <input type="number" class="form-control" id="inputCapacity" name="capacity" placeholder="" value="1" min="0" step="0">
                    </div>
                </div>

                <hr class="mb-4">
                <button class="btn btn-primary" type="submit">Save room</button>
                <a href="events/detail.php" class="btn btn-link">Cancel</a>
            </form>

        </main>
    </div>
</div>

</body>
</html>
