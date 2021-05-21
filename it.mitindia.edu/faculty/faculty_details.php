<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<?php
$en=$_GET["id"];
                                    include '../includes/dbconnect.php';                                    
                                    $sql = "SELECT * FROM `general` where FID='$en'";
                                    $result = $conn->query($sql);
                                    $row = $result->fetch_assoc();
                                    ?>
<html lang="en">
    <!--<![endif]-->
    <head>
        <!-- Title -->
        <title><?php echo $row['NAME']; ?> -Department Of Information Technology</title>
        <!-- Meta -->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="<?php echo $row['NAME']; ?>,<?php echo $row['DESIGNATION']; ?> ,Department of Information Technology , Madras Institue Of Technology ,Anna University">
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
        <link rel="stylesheet" type="text/css" href="../assets/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
       
       
        <script type="text/javascript" src="../assets/js/modernizr.custom.29473.js"></script>
        
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<style>
            .inc{
                font-size: 20px;
            }
            .pad{
                left: 100px;
            }
            .img{
                height: 70%;
                width:70%;
            }
            p.accordion {
    background-color: #eee;
    color: #444;
    cursor: pointer;
    padding: 10px;
    width: 900px;
    height:35px;
    text-align: left;
    border: 0px;
    outline: none;
    transition: 0.4s;
    margin-bottom:0px;
margin-left: 70px;
}

/* Add a background color to the accordion if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
p.accordion.active, p.accordion:hover {
    background-color: #ddd;
}

/* Unicode character for "plus" sign (+) */
p.accordion:after {
    content: '\2795'; 
    font-size: 17px;
    color: #777;
    float: right;
    margin-left: 70px;
   
}

/* Unicode character for "minus" sign (-) */
p.accordion.active:after {
    content: "\2796"; 

}

/* Style the element that is used for the panel class */

div.panel {
    padding: 0 18px;
    background-color: white;
    height: 0;
    font-size: 16px;
    position: relative;
    overflow: hidden;
    transition: 0.4s ease-in-out;
    opacity: 0;
    width: 900px;
    margin-left: 70px;
    margin-bottom:10px;
}

div.panel.show {
    opacity: 10;
    height: auto; /* Whatever you like, as long as its more than the height of the content (on all screen sizes) */
}
        </style>
        <script>
        document.addEventListener("DOMContentLoaded", function(event) { 


var acc = document.getElementsByClassName("accordion");
var panel = document.getElementsByClassName('panel');

for (var i = 0; i < acc.length; i++) {
    acc[i].onclick = function() {
        var setClasses = !this.classList.contains('active');
        setClass(acc, 'active', 'remove');
        setClass(panel, 'show', 'remove');

        if (setClasses) {
            this.classList.toggle("active");
            this.nextElementSibling.classList.toggle("show");
        }
    }
}

function setClass(els, className, fnName) {
    for (var i = 0; i < els.length; i++) {
        els[i].classList[fnName](className);
    }
}

});
        </script>




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
                        <div class="col-md-12">
                            <!--a href="faculty.php"><i class="material-icons">keyboard_return</i></a-->
                            <div class="row inc">
                                <?php
                                  $en= $_GET["id"];                                    
                                  echo "<div class=\"pad col-md-6 animate fadeIn\"><img class='img' src=\"../assets/img/pics/".$en.".jpg\" alt=".$row["NAME"]." class=\"margin-top-10\"></div><div class=\"col-md-6 margin-bottom-10 animate fadeInRight\">";                                 
                                                                      
                                    if($en=="ITF03")
                                          echo "<h3 class=\"padding-top-10 pull-left\">Dr.Dhananjay Kumar
                                        <small>- HOD-IT</small></h3><div class=\"clearfix\"></div>
                    <h4>
                                        <em>Success is that old ABC - Ability, Breaks and Courage.<br>--   Charles Luckman</em>
                                    </h4>";                                    
                                    $conn->close();
                                    ?>                                 
                                    <p>
                                    <table>
                                    <tbody>

                                    <?php
                                       
                                     $en=$_GET["id"];
                                    include '../includes/dbconnect.php';                                    
                                    $sql = "SELECT * FROM `general` where FID='$en'";
                                    $result = $conn->query($sql);
                                    $row = $result->fetch_assoc();
                                    if ($result->num_rows > 0) 
                                    {                  $link_address = $row["FIS"];

                                                        //$link_address="#";


                                      echo "<tr><td><p>Name:</p></td><td><p>". $row["NAME"] ."</p></td></tr>";
                                      //cho "<tr><td><p>Qualification:</p></td><td><p>" .$row["QUALIFICATION"]. "</p></td></tr>";
                                      echo "<tr><td><p>Designation:</p></td><td><p>" .$row["DESIGNATION"] ."</p></td></tr>";
                                      echo "<tr><td><p>Phone:</p></td><td><p>" .$row["PHONE"]. "</p></td></tr>";
                                      echo "<tr><td><p>Email:</p></td><td><p>" .$row["EMAIL"]. "</p></td></tr>";
                                      echo "<tr><td><p>Area of Specialisation:</p></td><td><p>" .$row["AREA OF SPECIALISATION"]. "</p></td></tr>";
                                      if($en=="ITF07")
                                      {echo "<tr><td><p>Website:</p></td><td><p>" ."<a href="."https://sites.google.com/view/grajesh"." target='_blank'>https://sites.google.com/view/grajesh</a> ". "</p></td></tr>";}
                                      if($en=="ITF03")
                                      {
                                          echo "<tr><td><p>Website:</p></td><td><p>" ."<a href="."https://sites.google.com/site/dhananjayks/home"." target='_blank'>https://sites.google.com/site/dhananjayks/home</a> ". "</p></td></tr>";
                                      }
                                      
                                        echo "<tr><td><p>  <a href=".$link_address." target='_blank'>View more...</a>                     </p</td></tr>";

                                        
                                    }
                                   
                                   echo"</tbody></table>
                                    </div>";
                                    echo"<br><br><br>";




                                    echo"<hr>";
                                     echo"<hr>";
                                    echo"<hr>";

                                
                                  
echo"<br><br><br><br><br><br><br><br><br><br><br><br><br>";
                                        
                                 
                                                
                                        
                                        
                                        
                                $sql=" SELECT * from `Index_check` where FID='$en'";
                                        $result = $conn->query($sql);
                                        $row = $result->fetch_assoc();
                                        
                                        $numbers=array("One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","Eleven","Twelve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen","Twenty","Twenty_One","Twenty_Two","Twenty_Three","Twenty_Four","Twenty_Five","Twenty_Six","Twenty_Seven","Twenty_Eight","Twenty_Nine","Thirty","Thirty_o");
                                        
                                        $l=0;
                                        
                                        if ($result->num_rows > 0)
                                        {
                                            $tables=array();
                                            if($row["Experience"]==1)
                                                $tables[$l++]="Experience";

                                            if($row["Journals"]==1)
                                                $tables[$l++]="Journals";
                                            if($row["Conference"]==1)
                                                $tables[$l++]="Conference";
                                            if($row["Workshop"]==1)
                                                $tables[$l++]="Workshop";
                                            if($row["FDP"]==1)
                                                $tables[$l++]="FDP";
                                            if($row["Session_chair"]==1)
                                                $tables[$l++]="Session_chair";
                                            if($row["Research"]==1)
                                                $tables[$l++]="Research";
                                            if($row["Research_guidance"]==1)
                                                $tables[$l++]="Research_guidance";
                                            if($row["Review"]==1)
                                                $tables[$l++]="Review";
                                            if($row["Evaluator"]==1)
                                                $tables[$l++]="Evaluator";

                                            if($row["Award"]==1)
                                                $tables[$l++]="Award";
                                            if($row["Scholars"]==1)
                                                $tables[$l++]="Scholars";
                                            
                                            if($row["Activities"]==1)
                                                $tables[$l++]="Activities";
                                            
                                            
                                            
                                            if($row["Contributions"]==1)
                                                $tables[$l++]="Contributions";
                                            
                                            if($row["Country_visit"]==1)
                                                $tables[$l++]="Country_visit";
                                            
                                        if($row["Lecture"]==1)
                                                $tables[$l++]="Lectures";
                                            if($row["other"]==1)
                                                $tables[$l++]="other";
                                            if($row["Courses"]==1)
                                                $tables[$l++]="Courses";
                                            if($row["Membership"]==1)
                                                $tables[$l++]="Membership";
                                            if($row["Seminar"]==1)
                                                $tables[$l++]="Seminar";
                                            
                                            
                                            
                                            $sqlq="SELECT * from `Qualification` where FID='$en'";
                                            
                                            $resultq= $conn->query($sqlq);
                                            
                                           if($resultq->num_rows>0)
                                           {$qn=1;
                                               $id="hundred";
                                               echo"<div id=$id>
                                               <p class=accordion><label for=$id>Qualification</label></p>
                                                   <div class=panel>
                                                   ";
                                               
                                                   while($rowq=$resultq->fetch_assoc())
                                                   {
                                                       echo"$qn.";
                                                       echo"$rowq[qualification]";
                                                       echo"<br>";
                                                       
                                                       $qn++;
                                                   }
                                               
                                           echo"</div></div>";
                                           
                                           
                                           }

                                            
                                            
                                            
                                            for ($i=0;$i<=$l;$i++)

                                            {
                                                $var="#".$numbers[$i-1];
                                                $sql1=" SELECT * from `$tables[$i]` where FID='$en'";
                                                $result1= $conn->query($sql1);
                                                $cln=array();
                                                $n=0;
                                                
                                                $sql2=" SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.Columns where TABLE_NAME = '$tables[$i]'";
                                                $result2= $conn->query($sql2);

                                                $row2=$result2->fetch_assoc();
                                                if($result2->num_rows>0)
                                                {$j=0;
                                                    while($row2 = $result2->fetch_assoc())
                                                        
                                                    {
                                                        
                                                             $cln[$j]=isset($row2["COLUMN_NAME"])? $row2["COLUMN_NAME"]:'nothing';
                                                        
                                                        
                                                        $j++;
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                        
                                                    
                                                
                                                
                                                
                                                
                                                
                                                }
                                                
                                         
                                                if($result1->num_rows>0)
                                                {
                                                    $id=$numbers[$i];

                                                    echo"<div id=$id>
                                                    <p class=accordion><label for=$id>$tables[$i]</label></p>
                                                    <div class=panel>
                                                    ";
                                                
                                                
                                                    $ijk=1;
                                                    $num=0;
                                                    if($tables[$i]=="Journals"||$tables[$i]=="FDP"||$tables[$i]=="Conference"||$tables[$i]=="Workshop")
                                                        
                                                    {
                                                        $num=$result1->num_rows;
                                                    }
                                                    
                                                   while($row1=$result1->fetch_assoc())
                                                    { if($tables[$i]=="Journals"||$tables[$i]=="FDP"||$tables[$i]=="Conference"||$tables[$i]=="Workshop")
                                                                                                                
                                                    {
                                                        echo "$ijk.";
                                                        $num--;
                                                    }
                                                        else
                                                      echo "$ijk. ";
                                                     
                                                        if($tables[$i]=="Scholars")
                                                        {
                                                            
                                                          
                                                        for($mn=0;$mn<$j;$mn++)
                                                        {
                                                            $ln=isset($cln[$mn])? "$cln[$mn]":' ';
                                                          $data= isset($row1[$ln])?$row1[$ln]:' ';
                                                        
                                                         echo  ($data." - ");
                                                          
                                                        }    
                                                        }

                                                        else{
                                                        for($mn=0;$mn<$j;$mn++)
                                                        {
                                                            $ln=isset($cln[$mn])? "$cln[$mn]":' ';
                                                          $data= isset($row1[$ln])?$row1[$ln]:' ';
                                                        
                                                         echo  $data."    ";
                                                        }}



                                                        $ijk++;
                                                        echo"<br>";
                                                       
                                                        
                                                    }
                                                
                                                
                                                      echo"</div></div>";
                                                }
                                                
                                                
                                                
                                            }
                                            
                                            
                                            
                                        }
                                  
                                   
                                        
                                       
                                  
                                        
                                        
                                        
                                    ?>
                                  
                                
                            </div>

                            <hr>
                            <div class="row animate fadeInUp">
                                <h2 class="text-center margin-top-10"> </h2>
                                <p class="text-center margin-bottom-30"> </p>
                            </div>

                                </div>
                           </div>
                        </div>
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