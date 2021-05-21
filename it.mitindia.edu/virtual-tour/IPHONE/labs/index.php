<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<title>Virtual Tour - Department of Information Technology</title>
<link rel="shortcut icon" href="../../../assets/favicon/favicon.ico" />
<?php
include '../../../includes/tracking.php';
?>
<script type="text/javascript">
			// hide URL field on the iPhone/iPod touch
			function hideUrlBar() {
				if (((navigator.userAgent.match(/iPhone/i)) || (navigator.userAgent.match(/iPod/i)))) {
					container = document.getElementById("container");
					if (container) {
						var cheight;
						switch(window.innerHeight) {
							case 208:cheight=268; break; // landscape
							case 336:cheight=396; break; // portrait, in call status bar
							case 356:cheight=416; break; // portrait 
							default:
								cheight=window.innerHeight;
						}
						if ((container.offsetHeight!=cheight) || (window.innerHeight!=cheight)) {
							container.style.height=cheight + "px";
							setTimeout(function() { hideUrlBar(); }, 1000);
						}
					}
				}
				
				if (window.pageYOffset==0) {
					window.scrollTo(0, 1);
				
				}
			}
</script>

<style type="text/css" title="Default">
			body, div, h1, h2, h3, span, p {
				font-family: Verdana,Arial,Helvetica,sans-serif;
				color: #000000; 
			}
			/* fullscreen */
			html {
				height:100%;
			}
			body {
				height:100%;
				margin: 0px;
				overflow:hidden; /* disable scrollbars */
			}
			body {
			  font-size: 10pt;
			  background : #5f82cb; 
			}
			table,tr,td {
				font-size: 10pt;
				border-color : #777777;
				background : #dddddd; 
				color: #000000; 
				border-style : solid;
				border-width : 2px;
				padding: 5px;
				border-collapse:collapse;
			}
			h1 {
				font-size: 18pt;
			}
			h2 {
				font-size: 14pt;
			}
			.warning { 
				font-weight: bold;
			} 
		</style>

<link type="text/css" rel="stylesheet" href="../style.css" />
<link type="text/css" rel="stylesheet" href="../iphone.css" />
<script type="text/javascript" src="../scripts/swfobject.js"></script>
<script type="text/javascript" src="../scripts/pano2vr_player.js"></script>
<script type="text/javascript" src="../scripts/skin.js"></script>

<script type="text/javascript">
function go()
{
window.location=document.getElementById("menu1").value
}
</script>

<script type="text/javascript">
 if ( (navigator.userAgent.indexOf('Windows') != -1) ) {
    document.location = "../labs/";
  }
</script>


</head>
<body onorientationchange="hideUrlBar();">
		<script type="text/javascript" src="../scripts/pano2vr_player.js">
		</script>
		<script type="text/javascript" src="../scripts/skin.js">
		</script>
		<script type="text/javascript" src="../scripts/pano2vrgyro.js">
		</script>
        <br><br>
<div style="padding-left:0px">
<form>
<select id="menu1" onChange="go()">
<OPTION  label="Department of Information Technology" value="../">Department of Information Technology</OPTION>

<OPTION selected value="#">Information Technology Lab</OPTION>
</SELECT>
</form>
</div>
</div><br><br>
		<div id="container" style="width:100%;height:100%;">
		This content requires HTML5/CSS3, WebGL, or Adobe Flash Player Version 9 or higher.
		</div>
		<script type="text/javascript">
		if (swfobject.hasFlashPlayerVersion("9.0.0")) {
			var flashvars = {};
			var params = {};
			params.quality = "high";
			params.bgcolor = "#ffffff";
			params.allowscriptaccess = "sameDomain";
			params.allowfullscreen = "true";
			var attributes = {};
			attributes.id = "pano";
			attributes.name = "pano";
			attributes.align = "middle";
			swfobject.embedSWF(
				"../2.swf", "container", 
				"100%", "100%",
				"9.0.0", "expressInstall.swf", 
				flashvars, params, attributes);
			
		} else 
		// check for CSS3 3D transformations and WebGL
		if (ggHasHtml5Css3D() || ggHasWebGL()) {
	
			// create the panorama player with the container
			pano=new pano2vrPlayer("container");
			// add the skin object
			skin=new pano2vrSkin(pano);
			// load the configuration
			pano.readConfigUrl("../2.xml");
			// hide the URL bar on the iPhone
			hideUrlBar();
			// add gyroscope controller
			gyro=new pano2vrGyro(pano,"container");
			
		}
		</script>
		<noscript>
			<p><b>Please enable Javascript!</b></p>
		</noscript>
		<P>&copy; DOIT - MIT</P>
	</body>
</html>