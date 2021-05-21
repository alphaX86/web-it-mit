<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <!-- Title -->
        <title>Faculty -Department Of Information Technology</title>
        <!-- Meta -->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="Faculty ,Department of Information Technology , Madras Institue Of Technology ,Anna University">
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
                                        <a href="../HOD-Desk" class="fa-user">HOD's DESK</a>
                                    </li>
                                    <li>
                                        <a href="../gallery" class="fa-image">GALLERY</a>
                                    </li>                                  
                                    <li>
                                        <a href="#" class="fa-users">FACULTY</a>
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
                        <div class="col-md-12">
                            <!-- Tab v3 -->
                            <div class="row tabs">
                                <div class="col-sm-3">
                                    <ul class="nav nav-pills nav-stacked">
                                        <li class="active">
                                            <a href="#sample-3a" data-toggle="tab">
                                                <i class="fa fa-users"></i>&nbsp;Teaching Staff</a>
                                        </li>
                                        <li>
                                            <a href="#sample-3b" data-toggle="tab">
                                                <i class="fa fa-users"></i>&nbsp;Non - Teaching Staff</a>
                                        </li>
<li>
                                            <a href="#sample-3c" data-toggle="tab">
                                                <i class="fa fa-users"></i>&nbsp;Office Staff</a>
                                        </li>
<li>
                                            <a href="#sample-3d" data-toggle="tab">
                                                <i class="fa fa-users"></i>&nbsp;Former Teaching Staff</a>
                                        </li>

<li>
                                            <a href="#sample-3e" data-toggle="tab">
                                                <i class="fa fa-users"></i>&nbsp;Former HOD</a>
                                        </li>



                                    </ul>
                                </div>
                                <div class="col-sm-9">
                                    <div class="tab-content">
                                        <div class="tab-pane fade in active" id="sample-3a">
<h2 style="color:#00695c; font-size:25pt;">Teaching Staff</h2>
                                            <div class="scrollable table-responsive">

                                                <table  class="table table-striped">
                                                  <thead>
                                                    <tr>
                                                      <th>Name</th>
                                                      <th>Designation</th>
                                                      <th>Phone Number</th>
                                                      <th>Email ID</th>
                                                    </tr>
                                                  </thead>
                                                  <tbody>
                                                  <?php
                                                    include '../includes/dbconnect.php';
                                                    $sql = "SELECT * FROM `Main` where status=1 order by sno";                                   
                                                    $result = $conn->query($sql);
                                                    if ($result->num_rows > 0) 
                                                    {
                                                      // output data of each row
                                                      while($row = $result->fetch_assoc()) 
                                                      {                                                                $id = $row['FID'];
                                                           

                                                        echo "<tr><td><a href='../faculty/{$id}'>" . $row["name"]. "</a></td><td> " . $row["designation"]. "</td><td>" . $row["phone"]. "</td><td>".$row["email"]."</td></tr>";
                                                      }
                                                    }
                                                    else 
                                                    {
                                                        echo "0 results";
                                                    }
                                                    $conn->close();
                                                                                                     
                                                    ?>
                                                  </tbody>
                                                </table>
                                        </div>
</div>
                                        <div class="tab-pane fade in" id="sample-3b">
                                          
                                            <h2 style="color:#00695c; font-size:25pt;">Non-Teaching Staff</h2>
                                            <div class="scrollable table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr style="color:#424242; font-size:12pt;">
                                  <th>S.No</th>
                                  <th>Name</th>
                                  <th>Designation</th>
                                  <th>Work</th>
                                  <th>Education</th>
                                </tr>
                              </thead>
                               <tbody style="color:#212121; font-size:11pt;">
                               <tr>
                                  <td>1</td>
                                  <td>V.Kannan</td>
                                  <td>Professional Assistant - I</td>
                                  <td>Conference Website Maintanence, System Maintanence, Server Maintanence
<br><br>
Worked in ICRTIT2012, ICRTIT2013, ICRTIT2014, ICRTIT2016</td>
                                  <td><ul style="list-style-type:disc;">
                                     <li>Diploma in IT – Valivalam Desikar Polytechnic College Nagapattinam</li>
                                      <li>B.E (CSE) - Anna University, MIT Campus</li></td>
                                
                                </tr>
                                 <tr>
                                  <td>2</td>
                                  <td>V.Saravanan</td>
                                  <td>Professional Assistant - II</td>
                                  <td>Server Maintanence, System Troubleshooting, Lab Maintanence
<br><br>
Worked in  ICRTIT2013, ICRTIT2014, ICRTIT2016</td>
                                  <td>
                                      <ul>
                                      <li>Diploma in Electrical and Electronics Engineering - Sri Ram Polytechnic, Vepampattu</li>
                                      <li>Bachelor of Computer Application - Madurai Kamarajar University</li>
                                      <li>Master of Computer Application - Anna University CEG Campus</li>
<br><b>Other:</b>  <br>     - Microsoft Certified System Engineer (MCSE)<br>
          - Honour Diploma in Computer Hardware and Networking (HDCH)

</td>
                                
                                </tr>
                                <tr>
                                  <td>3</td>
                                  <td>G.Senbagam</td>
                                  <td>Professional Assistant - II</td>
                                  <td>System Troubleshooting, Lab Maintanence
<br><br>
Worked in ICRTIT2014, ICRTIT2016</td>
                                  <td><ul style="list-style-type:disc;">
                                     <li>B.Sc Computer Science - Indo American College</li>
                                      <li>B.Ed Computer Science - Saratha College of Education</li>
                                      <li>Master of Computer Application - Quaid-E-Millath Government College for Women</li>
                                      </td>
                                
                                </tr>
                                 <tr>
                                  <td>4</td>
                                  <td>S.Kalpana</td>
                                  <td>Professional Assistant - I</td>
                                  <td>Maintain hardware and software issues for all systems in Lab's.
    <br>Troubleshoot the hardware and peripherals when needed.

<br><br>
Worked in  ICRTIT2016</td>
                                  <td><ul style="list-style-type:disc;">
                                     <li>B.E (C.S.E) - Rajalakshmi Engineering College, Thandalam.</li>
                                     
                                      </td>
                                
                                </tr>
                                </tbody>
                                </table>
                                </div>
</div>
<div class="tab-pane fade in" id="sample-3c">
                                          
                                            <h2 style="color:#00695c; font-size:25pt;">Office Staff</h2>
                                            <div class="scrollable table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr style="color:#424242; font-size:12pt;">
                                  <th>S.No</th>
                                  <th>Name</th>
                                  <th>Designation</th>
                                  <th>Contact Number</th>
                                                                  </tr>
                              </thead>
                               <tbody style="color:#212121; font-size:11pt;">
                               <tr>
                                  <td>1</td>
                                  <td>Mrs.A.Lakshmi</td>
                                  <td>Stenographer Gr I (SG)</td>
                                  <td>6024</td>
                                                                  </tr>
                                 <tr>
                                  <td>2</td>
                                  <td>Mrs.S.Akila</td>
                                  <td>Stenographer GR III</td>
                                  <td>6020</td>
                                                                  
                                </tr>
                                <tr>
                                  <td>3</td>
                                  <td>Mrs.M.Eswari</td>
                                  <td>M.S.G.C</td>
                                  <td>6024</td>
                                                                  
                                </tr>
                                 <tr>
                                  <td>4</td>
                                  <td>Mr.A.Augustin</td>
                                  <td>Professional Assistant - II</td>
                                  <td>6020</td>
                                                                  
                                </tr>
<tr>
                                  <td>4</td>
                                  <td>Mr.R.Sandiappan</td>
                                  <td>Peon</td>
                                  <td>6020</td>
                                                                  
                                </tr>

                                </tbody>
                                </table>
                                </div>

                                        </div>
<div class="tab-pane fade in " id="sample-3d">
<h2 style="color:#00695c; font-size:25pt;">Former Teaching Staff</h2>
                                            <div class="scrollable table-responsive">

                                                <table  class="table table-striped">
                                                  <thead>
                                                    <tr>
                                                      <th>Name</th>
                                                      <th>Designation</th>
                                                      
                                                      <th>Email ID</th>
                                                    </tr>
                                                  </thead>
                                                  <tbody>
                                                  <?php
                                                    include '../includes/dbconnect.php';
                                                    $sql = "SELECT * FROM `Main` where status=0";                                   
                                                    $result = $conn->query($sql);
                                                    if ($result->num_rows > 0) 
                                                    {
                                                      // output data of each row
                                                      while($row = $result->fetch_assoc()) 
                                                      {                                                                $id = $row['FID'];
                                                           

                                                        echo "<tr><td><a href='../archive/former_staff/?id={$id}'>" . $row["name"]. "</a></td><td> " . $row["designation"]. "</td><td>".$row["email"]."</td></tr>";
                                                      }
                                                    }
                                                    else 
                                                    {
                                                        echo "0 results";
                                                    }
                                                    $conn->close();                                                    
                                                    ?>
                                                  </tbody>
                                                </table>
                                        </div>
</div>
<div class="tab-pane fade in " id="sample-3e">
<h2 style="color:#00695c; font-size:25pt;">Former HOD</h2>
                                            <div class="scrollable table-responsive">

                                                <table  class="table table-striped">
                                                  <thead>
                                                    <tr>
                                                      <th>Name</th>
                                                      <th>Duration</th>
                                                      <th>Current Department</th>
                                                      <th>Email ID</th>
                                                    </tr>
                                                  </thead>
                                                  <tbody>
                                                  <tr><td><a href='../archive/former_staff/?id=ITF01'>Dr.B.Vinaya Sundaram</a></td><td>2013-2018</td><td>Computer Center,MIT</td><td>bvsundaram@annauniv.edu</td></tr>
                                                                                                      </tbody>
                                                </table>
                                        </div>
</div>


                                    </div>
                                </div>
                            </div>
                            <!-- Tab v3 -->
                            
                        </div>
                        <!-- End Main Column -->
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
                                <li><a href="#">Faculty List</a></li>
                                <li><a href="../infrastructure">Infrastructure</a></li>
                                <li><a href="../placements">Placements</a></li>
                                <li><a href="../ita">Association</a></li>
                                <li><a href="../gallery">Gallery</a></li>
                                <li><a href="../reports">Report</a></li>
                                 <li><a href="../contact">Contact</a></li>
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