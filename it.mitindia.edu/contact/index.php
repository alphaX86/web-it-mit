<?php
if(isset($_POST['send_msg']))

{
$to = "aucmitit@gmail.com";
    $first_name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];
    $subject = "Mail from \t".$first_name;
    $message1 = " Name: ".$first_name . "\n Email-ID: " .$email." \n Message: " . $_POST['message'];
    mail($to,$subject,$message1);
    $msg="<div class='alert alert-info' role='alert'>
                                <button type='button' class='close' data-dismiss='alert'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button>
                                <strong>Message Sent Successfully </strong> 
                            </div>";
}

?>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <!-- Title -->
        <title>Department Of Information Technology</title>
        <!-- Meta -->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="Contact , Department of Information Technology , Madras Institue Of Technology ,Anna University">
        <meta name="author" content="Tamilselvan M">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <!-- Favicon -->
        <link href="../assets/favicon/favicon.ico" rel="shortcut icon">
<?php
include '../includes/tracking.php';
?>
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="../assets/css/bootstrap.css" rel="stylesheet">
        <!-- Template CSS -->
        <link rel="stylesheet" href="../assets/css/animate.css" rel="stylesheet">
        <link rel="stylesheet" href="../assets/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="../assets/css/nexus.css" rel="stylesheet">
        <link rel="stylesheet" href="../assets/css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="../assets/css/custom.css" rel="stylesheet">
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300" rel="stylesheet" type="text/css">







    </head>
    <body>
            <!-- Header -->
            <div id="header">
                <div class="container">
                    <div class="row">
                        <!-- Logo -->
                        <a href="../"><img src="../assets/images/banner.png"></a>
                        <!-- End Logo -->
                    </div>
                </div>
            </div>
            <!-- End Header --><br><br>
            <!-- Top Menu -->
                <div class="container no-padding border-bottom">
                    <div class="row">
                        
                            <div class="visible-lg">
                                <ul id="hornavmenu" class="nav navbar-nav">
                                    <li>
                                        <a href="../" class="fa-home active">HOME</a>
                                    </li>
                                    <li>
                                        <a href="../HOD-Desk/" class="fa-user">HOD's DESK</a>
                                    </li>
                                    <li>
                                        <a href="../gallery" class="fa-image">GALLERY</a>
                                    </li>                                  
                                    <li>
                                        <a href="../faculty" class="fa-users">FACULTY</a>
                                    </li>
                                    <li>
                                        <a href="../students" class="fa-graduation-cap">STUDENTS</a>
                                    </li>
                                    <li>
                                        <a href="../curriculum" class="fa-university">CURRICULUM</a>
                                    </li>
                                    <li>
                                        <a href="../infrastructure" class="fa-building-o">INFRASTRUCTURE</a>
                                    </li>
                                    <li>
                                        <a href="../research" class="fa-graduation-cap ">RESEARCH</a>
                                    </li>
                                    <li>
                                        <a href="../events" class="fa-calendar ">EVENTS</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        
                   
                </div>
            </div>
            <!-- End Top Menu -->
            <!-- === END HEADER === -->
            <!-- === BEGIN CONTENT === -->

      










            <div id="content">
                <div class="container background-white">
                    <div class="row margin-vert-30">
                        <!-- Main Column -->
                        <div class="col-md-9">
                            <!-- Main Content -->
                            <div class="headline">
                                <h2 style="color:#00695c; font-size:25pt;">Contact Form</h2>
                            </div>
                            <br>
                            <?php
if(isset($msg)){
      echo $msg;}?>
                            <!-- Contact Form -->
                            <form action="#" method="post">
                                <label style="color:#424242; font-size:12pt;">Name</label>
                                <div class="row margin-bottom-20">
                                    <div class="col-md-6 col-md-offset-0">
                                        <input class="form-control" type="text" name="name">
                                    </div>
                                </div>
                                <label style="color:#424242; font-size:12pt;">Email
                                    <span class="color-red">*</span>
                                </label>
                                <div class="row margin-bottom-20">
                                    <div class="col-md-6 col-md-offset-0">
                                        <input class="form-control" type="text" name="email">
                                    </div>
                                </div>
                                <label style="color:#424242; font-size:12pt;">Message</label>
                                <div class="row margin-bottom-20">
                                    <div class="col-md-8 col-md-offset-0">
                                        <textarea rows="8" class="form-control" name="message"></textarea>
                                    </div>
                                </div>
                                <p>
                                    <button name="send_msg"  class="btn btn-primary">Send Message</button>
                                </p>
                            </form>
                            <!-- End Contact Form -->
                            <!-- End Main Content -->
                        </div>
                        <!-- End Main Column -->
                        <!-- Side Column -->
                        <div class="col-md-3">
                            <!-- Recent Posts -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Contact Info</h3>
                                </div>
                                <div class="panel-body">
                                    <ul class="list-unstyled">
                                        <li>
                                            <a href="tel:04422516020"><i class="fa-phone color-primary"></i>044-2251 6020</li></a>
                                        <li>
                                            <a href="mailto:aucmitit@gmail.com"><i class="fa-envelope color-primary"></i>aucmitit@gmail.com</li></a>
                                        <li>
                                            <a href="../"><i class="fa-home color-primary"></i>http://it.mitindia.edu</li></a>
                                    </ul>
                                    <ul class="list-unstyled">
                                        <li>
                                            <strong class="color-primary">Monday-Friday:</strong>8:30am to 5pm</li>
                                        <li>
                                            <strong class="color-primary">Saturday:</strong>8:30am to 3pm</li>
                                        <li>
                                            <strong class="color-primary">Sunday:</strong>Closed</li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End recent Posts -->
                            <!-- About -->
                            <!-- End About -->
                        </div>
                        <!-- End Side Column -->
                    </div>
                </div>
            </div>
            <!-- === END CONTENT === -->
            <!-- === BEGIN FOOTER === -->
            <div id="base">
                <div class="container bottom-border padding-vert-30">
                    <div class="row">
                        <!-- Disclaimer -->
                        <div class="col-md-4">
                            <h3 class="class margin-bottom-10">Quick Links</h3>
                            <ul>
                                <li><a href="../curriculum">Courses</a></li>
                                <li><a href="../faculty">Faculty List</a></li>
                                <li><a href="../infrastructure">Infrastructure</a></li>
                                <li><a href="../placements">Placements</a></li>
                                <li><a href="../ita">Association</a></li>
                                <li><a href="../gallery">Gallery</a></li>
                                <li><a href="../reports">Report</a></li>
                                 <li><a href="#">Contact</a></li>
                            </ul>
                        </div>
                        <!-- End Disclaimer -->
                        <!-- Contact Details -->
                        <div class="col-md-4 margin-bottom-20">
                            <h3 class="margin-bottom-10">Contact Details</h3>
                            <p>
                                <a href="tel:04422516020"><span class="fa-phone">Telephone:</span>044-2251 6020</a>
                                <br>
                                <a href="mailto:aucmitit@gmail.com"><span class="fa-envelope">Email:</span>
                                aucmitit@gmail.com</a>
                                <br>
                            </p>
                            <p>Department of Information Technology,
                                <br>Madras Institue of Technology campus,
                                <br>Anna University,
                                <br>Chennai - 600044</p>
                        </div>
                        <!-- End Contact Details -->
                        <!-- Sample Menu -->
                        <div class="col-md-4 margin-bottom-20">
                            <h3 class="margin-bottom-10">Useful Links</h3>
                            <ul class="menu">
                                <li>
                                    <a class="fa-university" href="https://www.annauniv.edu/">Anna University</a>
                                </li>
                                <li>
                                    <a class="fa-graduation-cap" href="http://www.mitindia.edu/en/">MIT Home</a>
                                </li>
                                <li>
                                    <a class="fa-adn" href="https://acoe.annauniv.edu/sems/">SEMS</a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <!-- End Sample Menu -->
                    </div>
                </div>
            </div>
            <!-- Footer -->
            <div id="footer" class="background-grey">
                <div class="container">
                    <div class="row">
                        <!-- Footer Menu -->
                        <div id="footermenu" class="col-md-8">
                            <p>&copy; 2018 Department of Information Technology</p>
                        </div>
                        <!-- End Footer Menu -->
                        
                    </div>
                </div>
            </div>
            <!-- End Footer -->
            <!-- JS -->
            <script type="text/javascript" src="../assets/js/jquery.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="../assets/js/bootstrap.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="../assets/js/scripts.js"></script>
            <!-- Isotope - Portfolio Sorting -->
            <script type="text/javascript" src="../assets/js/jquery.isotope.js" type="text/javascript"></script>
            <!-- Mobile Menu - Slicknav -->
            <script type="text/javascript" src="../assets/js/jquery.slicknav.js" type="text/javascript"></script>
            <!-- Animate on Scroll-->
            <script type="text/javascript" src="../assets/js/jquery.visible.js" charset="utf-8"></script>
            <!-- Sticky Div -->
            <script type="text/javascript" src="../assets/js/jquery.sticky.js" charset="utf-8"></script>
            <!-- Slimbox2-->
            <script type="text/javascript" src="../assets/js/slimbox2.js" charset="utf-8"></script>
            <!-- Modernizr -->
            <script src="../assets/js/modernizr.custom.js" type="text/javascript"></script>
            <!-- End JS -->
    </body>
</html>
<!-- === END FOOTER === -->