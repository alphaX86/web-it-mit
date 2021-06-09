<?php

    include '../includes/dbconnect.php';
    $inputID = $_GET['id'];
    $sql = "SELECT * FROM data WHERE fid='$inputID'";

    if ($result = $conn -> query($sql)) {
        $row = $result -> fetch_assoc();
    }

    if(!isset($row['name'])){header("location: https://google.com");}
    
    require_once "Mobile_Detect.php";
    $detect = new Mobile_Detect;
    if( $detect->isMobile() && !$detect->isTablet() ){
        include 'mobile.php';
    }
    else {
        include 'desktop.php';
    }
    die();

?>