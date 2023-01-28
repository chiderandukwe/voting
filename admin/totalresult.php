<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>

<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

        <?php include 'includes/navbar.php'; ?>
        <?php include 'includes/menubar.php'; ?>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    Total Results
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li class="active">Total Results</li>
                </ol>
            </section>
            <!-- Main content -->
            <section class="content">
                <p><a href="writeresult.php"><i class="fa fa-printer"></i> Print Result</a></p>
                <?php
                    $sql = "SELECT * FROM positions ORDER BY priority ASC";
                    $query = $conn->query($sql);
                    while($row = $query->fetch_assoc()){
                        
                            $sqlquery = "SELECT COUNT(id)  as numbers FROM votes WHERE position_id =".$row['id'];
                            $querySql = $conn->query($sqlquery);
                            $sqlqueryrow = $querySql->fetch_assoc();
                      echo "
                          <h1> <strong>".$row['description'].":  <span style='font-size:14px'>". $sqlqueryrow['numbers']." Total Votes</span></strong></h1>";
                
                            $sql2 = "SELECT * FROM candidates WHERE position_id =".$row['id'];
                            $query2 = $conn->query($sql2);
                            while($row2 = $query2->fetch_assoc()){

                            echo "<h3>
                                ".$row2['firstname']." ". $row2['lastname']."
                            </h3>";
                            $sql3 = "SELECT COUNT(id) as numbers FROM votes WHERE candidate_id =".$row2['id'];
                            $query3 = $conn->query($sql3);
                            $row3 = $query3->fetch_assoc();
                            echo "<p>
                                ".$row3['numbers']." votes
                            </p>";

                            }

                }
                ?>

            </section>
        </div>

        <?php include 'includes/footer.php'; ?>
        <?php include 'includes/positions_modal.php'; ?>
    </div>
    <?php include 'includes/scripts.php'; ?>

</body>

</html>