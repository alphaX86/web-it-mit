<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Faculty Page of IT-MIT">
    <title>Faculty Page</title>
    <link rel="stylesheet" href="css/fa.css">
    <link rel="stylesheet" href="css/mobile.css" />
    <link rel="shortcut icon" href="ITF03.jpg" type="image/x-icon" />
    <script src="js/fa.js"></script>
    <script>
        var divIds = [];
        var activeDiv;
    </script>
</head>

<body>
    <div class="wrapper">
        <div class="header" style="height: 10rem;">
            <center><p style="font-size: 2rem">Madras Institute of Technology</p></center>
        </div>
        <div class="mainContainer">
            <div class="mainCard">
                <div class="imageContainer">
                    <div class="actualImageHolder">
                        <img src="../assets/img/pics/<?php echo $inputID; ?>.jpg" alt="<?php echo $row['name']; ?>" />
                    </div>
                </div>
                <div class="generalContainer">
                    <p style="font-size: 2rem;"><?php echo $row['name']; ?></p>
                    <p style="padding-top: 0; padding-bottom: 0;"><?php echo $row['designation']; ?></p>
                    <p style="margin-top: 0;color: #545454;"><?php echo $row['awards']; ?></p>
                    <p><?php echo $row['special']; ?></p>
                    <div class="logos">
                        <?php if($row['mailid']!=null) echo '<a href="mailto:'. $row['mailid'].'"><i id="mail" class="fas fa-envelope-open"></i></a>'; ?>
                        <?php if($row['phone']!=null) echo '<a href="tel:+'. $row['phone'] .'"><i id="phone" class="fas fa-phone-alt"></i></a>'; ?>
                        <?php if($row['ownwebsite']!=null) echo '<a href="'.$row['ownwebsite'].'" target="_blank" rel="noopener noreferrer"><i id="ownsite" class="fas fa-home"></i></a>'; ?>        
                        <?php if($row['officiallink']!=null) echo '<a href="'.$row['officiallink'].'" target="_blank" rel="noopener noreferrer"><i id="link" class="fas fa-link"></i></a>'; ?>
                    </div>
                </div>
            </div>
            <div class="mainCard">
                <div class="navigationHolder">
                    <?php if($row['qualification']!=null) { echo '<div class="categoryOption" id="qualificationp"> <p onmousedown="applydiv(\'qualificationp\')">Qualification</p> </div>'; echo "\n"; }?>
                    <?php if($row['experience']!=null) { echo '<div class="categoryOption" id="experiencep"> <p onmousedown="applydiv(\'experiencep\')">Experience</p> </div>'; echo "\n"; }?>
                    <?php if($row['journals']!=null) { echo '<div class="categoryOption" id="journalsp"> <p onmousedown="applydiv(\'journalsp\')">Journals</p> </div>'; echo "\n"; }?>
                    <?php if($row['fdp']!=null) { echo '<div class="categoryOption" id="fdpp"> <p onmousedown="applydiv(\'fdpp\')">FDP</p> </div>'; echo "\n"; }?>
                    <?php if($row['research']!=null) { echo '<div class="categoryOption" id="researchp"> <p onmousedown="applydiv(\'researchp\')">Research</p> </div>'; echo "\n"; }?>
                    <?php if($row['researchguide']!=null) { echo '<div class="categoryOption" id="rguidancep"> <p onmousedown="applydiv(\'rguidancep\')">Research Guidance</p> </div>'; echo "\n"; }?>
                    <?php if($row['review']!=null) { echo '<div class="categoryOption" id="reviewp"> <p onmousedown="applydiv(\'reviewp\')">Review</p> </div>'; echo "\n"; }?>
                    <?php if($row['evaluator']!=null) { echo '<div class="categoryOption" id="evaluatorp"> <p onmousedown="applydiv(\'evaluatorp\')">Evaluator</p> </div>'; echo "\n"; }?>
                    <?php if($row['awards']!=null) { echo '<div class="categoryOption" id="awardp"> <p onmousedown="applydiv(\'awardp\')">Awards</p> </div>'; echo "\n"; }?>
                    <?php if($row['scholars']!=null) { echo '<div class="categoryOption" id="scholarsp"> <p onmousedown="applydiv(\'scholarsp\')">Scholars</p> </div>'; echo "\n"; }?>
                    <?php if($row['activities']!=null) { echo '<div class="categoryOption" id="activitiesp"> <p onmousedown="applydiv(\'activitiesp\')">Activities</p> </div>'; echo "\n"; }?>
                    <?php if($row['country']!=null) { echo '<div class="categoryOption" id="countryp"> <p onmousedown="applydiv(\'countryp\')">Country Visit</p> </div>'; echo "\n"; }?>
                    <?php if($row['lectures']!=null) { echo '<div class="categoryOption" id="lecturesp"> <p onmousedown="applydiv(\'lecturesp\')">Lectures</p> </div>'; echo "\n"; }?>
                    <?php if($row['seminar']!=null) { echo '<div class="categoryOption" id="seminarp"> <p onmousedown="applydiv(\'seminarp\')">Seminar</p> </div>'; echo "\n"; }?>
                    <?php if($row['honors']!=null) { echo '<div class="categoryOption" id="honorsp"> <p onmousedown="applydiv(\'honorsp\')">Honors</p> </div>'; echo "\n"; }?>
                    <?php if($row['prochair']!=null) { echo '<div class="categoryOption" id="pchairedp"> <p onmousedown="applydiv(\'pchairedp\')">Program Chaired</p> </div>'; echo "\n"; }?>
                    <?php if($row['proattend']!=null) { echo '<div class="categoryOption" id="pattendedp"> <p onmousedown="applydiv(\'pattendedp\')">Books</p> </div>'; echo "\n"; }?>
                    <?php if($row['proorganise']!=null) { echo '<div class="categoryOption" id="porganizedp"> <p onmousedown="applydiv(\'porganizedp\')">Programs Organized</p> </div>'; echo "\n"; }?>
                    <?php if($row['projects']!=null) { echo '<div class="categoryOption" id="projectsp"> <p onmousedown="applydiv(\'projectsp\')">Projects</p> </div>'; echo "\n"; }?>                    
                </div>
            </div>
            <div id="pullintoview"></div>
            <div class="mainCard">
                
                <div class="cagetoryDataH style=" margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none; id="cagetoryDataH">

                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="qualificationpdiv">
                        <script>divIds.push("qualificationpdiv");</script>
                        <p class="titleHeading">Qualification</p>
                        <p>
                            <?php echo $row['qualification']; ?></p>
                    </div>

                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="experiencepdiv">
                        <script>divIds.push("experiencepdiv");</script>
                        <p class="titleHeading">Experience</p>
                        <p>
                            <?php echo $row['experience']; ?></p>
                    </div>

                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="journalspdiv">
                        <script>divIds.push("journalspdiv");</script>
                        <p class="titleHeading">Journals</p>
                        <p>
                            <?php echo $row['journals']; ?></p>
                    </div>

                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="fdppdiv">
                        <script>divIds.push("fdppdiv");</script>
                        <p class="titleHeading">FDP</p>
                        <p>
                            <?php echo $row['fdp']; ?></p>
                    </div>


                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="researchpdiv">
                        <script>divIds.push("researchpdiv");</script>
                        <p class="titleHeading">Research</p>
                        <p>
                            <?php echo $row['research']; ?></p>
                    </div>

                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="rguidancepdiv">
                        <script>divIds.push("rguidancepdiv");</script>
                        <p class="titleHeading">Research Guidance</p>
                        <p>
                            <?php echo $row['researchguide']; ?></p>
                    </div>

                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="reviewpdiv">
                        <script>divIds.push("reviewpdiv");</script>
                        <p class="titleHeading">Review</p>
                        <p>
                            <?php echo $row['review']; ?></p>
                    </div>

                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="evaluatorpdiv">
                        <script>divIds.push("evaluatorpdiv");</script>
                        <p class="titleHeading">Evaluator</p>
                        <p>
                            <?php echo $row['evaluator']; ?></p>
                    </div>


                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="awardpdiv">
                        <script>divIds.push("awardpdiv");</script>
                        <p class="titleHeading">Awards</p>
                        <p><?php echo $row['awards']; ?></p>
                    </div>

                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="scholarspdiv">
                        <script>divIds.push("scholarspdiv");</script>
                        <p class="titleHeading">Scholars</p>
                        <p><?php echo $row['scholars']; ?></p>
                    </div>


                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="activitiespdiv">
                        <script>divIds.push("activitiespdiv");</script>
                        <p class="titleHeading">Activites</p>
                        <p><?php echo $row['activities']; ?></p>
                    </div>


                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="countrypdiv">
                        <script>divIds.push("countrypdiv");</script>
                        <p class="titleHeading">Country Visit</p>
                        <p><?php echo $row['country']; ?></p>
                    </div>

                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="lecturespdiv">
                        <script>divIds.push("lecturespdiv");</script>
                        <p class="titleHeading">Lectures</p>
                        <p><?php echo $row['lectures']; ?></p>
                    </div>

                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="seminarpdiv">
                        <script>divIds.push("seminarpdiv");</script>
                        <p class="titleHeading">Seminar</p>
                        <p><?php echo $row['seminar']; ?></p>
                    </div>


                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="honorspdiv">
                        <script>divIds.push("honorspdiv");</script>
                        <p class="titleHeading">Honors</p>
                        <p><?php echo $row['honors']; ?></p>
                    </div>

                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="pchairedpdiv">
                        <script>divIds.push("pchairedpdiv");</script>
                        <p class="titleHeading">Projects Chaired</p>
                        <p><?php echo $row['prochair']; ?></p>
                    </div>

                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="pattendedpdiv">
                        <script>divIds.push("pattendedpdiv");</script>
                        <p class="titleHeading">Books</p>
                        <p><?php echo $row['proattend']; ?></p>
                    </div>

                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="porganizedpdiv">
                        <script>divIds.push("porganizedpdiv");</script>
                        <p class="titleHeading">Projects Organized</p>
                        <p><?php echo $row['proorganise']; ?></p>
                    </div>

                    <div class="cagetoryData" style="margin-bottom: 0.5rem; padding: 0 10px; min-width: 70vw; display: none;" id="projectspdiv">
                        <script>divIds.push("projectspdiv");</script>
                        <p class="titleHeading">Projects</p>
                        <p><?php echo $row['projects']; ?></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer" style="height: 10rem; border: 1px solid #545454;">
            <center>
                <h1>The Footer Goes Here</h1>
            </center>
        </div>
    </div>
    <script>const setDisplay=()=>{for(var e=0;e<divIds.length;e++)document.getElementById(divIds[e]).style.display="none"},applydiv=e=>{setDisplay(),document.getElementById(e).style.backgroundColor="#e8f0fe",document.getElementById(e).style.color="#1558d6",activeDiv&&e!=activeDiv&&(document.getElementById(activeDiv).style.backgroundColor=null,document.getElementById(activeDiv).style.color=null);var t=e+"div";document.getElementById(t).style.display="block",document.getElementById("pullintoview").scrollIntoView({behavior:"smooth"}),activeDiv=e};</script>
</body>
</html>