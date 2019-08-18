<?php
    $connection = mysqli_connect("localhost", "root", "root", "database");
?>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <title>Orphanage Hope</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="css/jquery.mobile-1.4.5.min.css" type="text/css">

        <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
        <script type="text/javascript" src="js/jquery.mobile-1.4.5.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>

        <body>
            <div class="main">
                <div class="header">

                    
                    <div class="clr"></div>
                    <div class="hbg"><img src="images/header_images.jpg" width="670" height="298" alt="" class="fl" />
                        <div class="info fl">
                            <h4>Welcome to </h4>
                            <h4>Orphans Hope</h4>
                        </div>
                        <div class="clr"></div>
                    </div>
                    <div class="clr"></div>
                </div>
                <div class="content">


                    <div class="article">


                        <h4 style="color:#97c950;">Donor Data</h4>
                        <br>
                        <?php
                        $query = "SELECT * FROM donate"; 
                        $result = mysqli_query($connection,$query);
                        ?>
                            <table class="table table-hover">
                                <tr>
                                    <td>Type</td>
                                    <td>Card Holder Name</td>
                                    <td>Card No</td>
                                    <td>Date</td>
                                    <td>CVV</td>
                                </tr>
                                <?php
                        while($row = mysqli_fetch_array($result)){   
                        echo "<tr><td>" . $row['type'] . "</td><td>" . $row['ccname'] . "</td><td>". $row['ccno'] ."</td><td>". $row['date'] ."</td><td>". $row['cvv'] ." </td></tr>";  
                        }

                        echo "</table>"; 

                        mysqli_close($connection);  
                        ?>


                    </div>

                </div>

                <div class="clr"></div>
            </div>
            <div class="fbg">
                <div class="fbg_resize">
                    <div class="col c1">
                        <h2><span>Follow US</span></h2>
                        <a href="#"><img src="images/pic_1.png" width="58" height="58" alt="" /></a>
                        <a href="#"><img src="images/pic_2.png" width="58" height="58" alt="" /></a>
                        <a href="#"><img src="images/pic_3.jpg" width="58" height="58" alt="" /></a>

                    </div>
                    <div class="col c2">
                        <h2><span>Latest News</span></h2>
                        <p>Lorem ipsum dolor<br /> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. <a href="#">Morbi tincidunt, orci ac convallis aliquam</a>, lectus turpis varius lorem, eu posuere nunc justo tempus leo. Donec mattis, purus nec placerat bibendum, dui pede condimentum odio, ac blandit ante orci ut diam.</p>
                    </div>
                    <div class="col c3">
                        <h2><span>About</span></h2>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo. llorem, eu posuere nunc justo tempus leo. Donec mattis, purus nec placerat bibendum. <a href="#">Learn more...</a></p>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="footer">
                <div class="footer_resize">
                    <p class="lf">&copy; Copyright <a href="#">Orphanage Hope</a>. &nbsp; &nbsp; All right reserved.</p>

                    <div class="clr"></div>
                </div>
            </div>
            </div>

        </body>

    </html>
