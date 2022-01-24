<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Logging</title>
    <link rel="stylesheet" type="text/css" href="headerfooter.css">
</head>
<body>
<!--header-->
 
<div class="header">
	<a href="index.html">
	<img class="logo"  src="images/carelogo.png" alt="Serendib Hospitals" height="80"  width ="80">
	</a>
	<div class="navigation">
		<a href="#contact">ACCOUNT</a>
		<a href="#about">ABOUT US</a>
		<a href="#about">CONTACT US</a>
		<a href="#about">LOGIN</a>
		<a href="#about">REGISTER</a>
		<a href="index.html">HOME</a>
	</div>
	
	<h2 class="title"><a href='index.html'>CARE <br>&nbsp HOSPITALS </h2> </a>
	
</div>
<!-- end of header--> 
<body>
<center>
	<h1>Patient Logging</h1>
</center>
<center>
	<form action="log" method="post" >
		User Name <input type="text" name="uid"> <br>
		Password <input type="password" name="pass"><br>
		
		<input type="submit" name="submit" value="login">
	</form>
</center>	
	
<!-- footer -->

<div class="footer">
	<div class= "follow">Follow us on </div>
	<div class="getthe">Get the app </div>
	<div class="copy">Copyright &copy; Care Hospitals PLC <br> 253f, <br>Udaya Mawatha,<br> Malabe. </div>

	<div class="socialbuttons">
		<a href="https://www.facebook.com"><img src="images/fb.png" alt="facebook" class="fb"></a>
		<a href="https://www.instagram.com"><img src="images/insta.webp" alt="instagram" class="insta"></a>
		<a href="https://www.twitter.com"><img src="images/twitter.png" alt="twitter" class="twitter"></a>
		<a href="https://www.play.google.com"><img src="images/android.png" alt="play store" class="android"></a>
		<a href="https://www.apple.com/ios/app-store/"><img src="images/ios.png" alt="app store" class="ios" ></a>
	</div>
<!-- end of footer -->

</div>
</body>
</html>