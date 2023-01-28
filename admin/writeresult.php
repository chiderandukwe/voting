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
                <?php
                $myfile = fopen("C:/xampp/htdocs/voting/admin/newfile.txt", "w") or die("Unable to open file!");
                    
                    
                    
                    
                    $sql = "SELECT * FROM positions ORDER BY priority ASC";
                    $query = $conn->query($sql);
                    while($row = $query->fetch_assoc()){
                        
                            $sqlquery = "SELECT COUNT(id)  as numbers FROM votes WHERE position_id =".$row['id'];
                            $querySql = $conn->query($sqlquery);
                            $sqlqueryrow = $querySql->fetch_assoc();
                            $val = "\n";
                            $txt = "\n".$row['description'] .": ".$sqlqueryrow['numbers']." Total Votes".$val;
                            fwrite($myfile, $txt);

                            $sql2 = "SELECT * FROM candidates WHERE position_id =".$row['id'];
                            $query2 = $conn->query($sql2);
                            while($row2 = $query2->fetch_assoc()){

                            $txt = $row2['firstname']." ". $row2['lastname'];
                            fwrite($myfile, $txt);
                            
                            
                            $sql3 = "SELECT COUNT(id) as numbers FROM votes WHERE candidate_id =".$row2['id'];
                            $query3 = $conn->query($sql3);
                            $row3 = $query3->fetch_assoc();
                            $txt = ": ".$row3['numbers'].", ";
                            fwrite($myfile, $txt);
                            $val = "\n";
                            fwrite($myfile, $val);
                            }

                }
                
                fclose($myfile);
              
                    // $file_url = 'http://localhost/voting/admin/newfile.txt';  
                    // header('Content-Type: application/octet-stream');  
                    // header("Content-Transfer-Encoding: utf-8");   
                    // header("Content-disposition: attachment; filename=\"" . basename($file_url) . "\"");   
                    // readfile($file_url); 
                    
                    
                        // Initialize a file URL to the variable
                    $url = 
                    // 'https://api.afarite.com/public/storage/user/avatar.jpg';
                    'localhost/voting/admin/newfile.txt';
                    
                    // Use basename() function to return the base name of file
                    $file_name = basename($url);
                    
                    // Use file_get_contents() function to get the file
                    // from url and use file_put_contents() function to
                    // save the file by using base name
                    if (file_put_contents("ghhhjj".$file_name, file_get_contents($url)))
                    {
                        echo "File downloaded successfully";
                    }
                    else
                    {
                        echo "File downloading failed.";
                    }
                ?>
                <h3 class="bg-success" style="height: 50px; width:100%"> click here to download fileGo to your local
                    disk drive C and locate
                    the
                    file "newresulttextfile.txt"
                </h3>
            </section>
        </div>

        <?php include 'includes/footer.php'; ?>
        <?php include 'includes/positions_modal.php'; ?>
    </div>
    <?php include 'includes/scripts.php'; ?>

</body>

</html>