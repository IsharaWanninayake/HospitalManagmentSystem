<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<h1 >Patient Profile</h1>
	<table>
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="age" value="${cus.age}"/>
	<c:set var="add" value="${cus.address}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<tr>
		<td>Customer ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Customer Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>Customer Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Customer Phone</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>Customer Age</td>
		<td>${cus.age}</td>
	</tr>
	<tr>
		<td>Customer Address</td>
		<td>${cus.address}</td>
	</tr>
	<tr>
		<td>Customer User Name</td>
		<td>${cus.userName}</td>
	</tr>
	<tr>
		<td>Customer password</td>
		<td>${cus.password}</td>
	</tr>
			
	</c:forEach>
	 </table>
	 
	 <c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}"/>
		<c:param name="age" value="${age}" />
		<c:param name="add" value="${add}"/>
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	 
	 <a href="${cusupdate}">
	 <input type="button" name="update" value="Update My Data">
	 </a>
	 
	 <br>
	 <c:url value="Deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}"/>
		<c:param name="age" value="${age}" />
		<c:param name="add" value="${add}"/>
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	 <a href ="${cusdelete}">
	 <input type="button" name="delete" value="Delete My Account">
	 </a>
	 
	 
	 
	 
	 
	 
	 
	 
	 
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