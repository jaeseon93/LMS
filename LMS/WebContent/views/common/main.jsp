<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>home</title>
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

.w3-row-padding img {
	margin-bottom: 12px
}

.w3-sidebar {
	width: 220px;
}

#main {
	margin-left: 120px
}

@media only screen and (max-width: 600px) {
	#main {
		margin-left: 0
	}
}
</style>
</head>
<body class="w3-pale-green">
<!-- Navbar on small screens (Hidden on medium and large screens) -->
<div class="w3-top w3-hide-large w3-hide-medium" id="myNavbar">
  <div class="w3-bar w3-white w3-opacity w3-hover-opacity-off w3-center w3-small">
    <a href="home.do" class="w3-bar-item w3-button" style="width:25% !important">홈</a>
    <a href="memberList.do" class="w3-bar-item w3-button" style="width:25% !important">회원목록</a>
    <a href="boardList.do" class="w3-bar-item w3-button" style="width:25% !important">자우게시판</a>
    <a href="#" class="w3-bar-item w3-button" style="width:25% !important">MENU04</a>
    <a href="memberJoin.do" class="w3-bar-item w3-button" style="width:25% !important">회원가입</a>
  </div>
</div>

	<nav class="w3-sidebar w3-light-green w3-bar-block w3-large w3-hide-small w3-center">
		<div class="w3-container w3-light-green w3-hover-text-white">
			<img src="img/1.jpg" style="width: 100%;"> <a href="home.do"
				class="w3-bar-item w3-button w3-padding-large w3-hover-white w3-light-green">
				<i class="fa fa-home w3-xxlarge"></i> <p>홈</p>
			</a> <a href="memberList.do"
				class="w3-bar-item w3-button w3-padding-large w3-hover-white w3-light-green">
				<i class="fa fa-user w3-xxlarge"></i> <p>회원목록</p>
			</a> <a href="boardList.do"
				class="w3-bar-item w3-button w3-padding-large w3-hover-white w3-light-green">
				<i class="fa fa-eye w3-xxlarge"></i>
				<p>자유게시판</p>
			</a> <a href="#"
				class="w3-bar-item w3-button w3-padding-large w3-hover-white w3-light-green">
				<i class="fa fa-envelope w3-xxlarge"></i>
				<p>MENU04</p>
			</a> <a href="memberJoin.do"
				class="w3-bar-item w3-button w3-padding-large w3-hover-white w3-light-green">
				<i class="fa fa-envelope w3-xxlarge"></i>
				<p>회원가입</p>
			</a>
		</div>
	</nav>

</body>
</html>