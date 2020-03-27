<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="common/main.jsp"></jsp:include>

<!DOCTYPE html>
<html>
<head>
 <title>JASEON WORLD</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-colors-win8.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-colors-metro.css">
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", sans-serif
}

p {
	font-family: "Raleway", sans-serif
}

.w3-sidebar {
	width: 220px;
}

#main {
	psition:relative;
	margin-left:90px;

}

@media only screen and (max-width: 600px) {
	#main {
		margin-left: 0
	}
}
</style>
</head>
<body class="w3-pale-green">
<!-- Page Content -->
<div id="main">
  <!-- Header/Home -->
  	<div align="center" style= padding:15px; class="col-sm-4 w3-green">
  	<h2 style="margin:0px; text-shadow:1px 1px 0 #444">JAESEON</h2>
	</div>


  <div align="center">
   <BR><BR><img src="img/1.jpg" alt="배경사진" class="w3-image" width="1100" height="1358"></div>
 
 </div>
<div align="center">
<p><button class="w3-button w3-text-green w3-khaki w3-hover-white w3-round-large w3-xlarge"
           onclick="location.href='login.do'"><b>로그인</b></button></p>
</div>
</body>
</html>
 <br/><br/><br/><br/>
 <jsp:include page="common/tail.jsp"></jsp:include>

    