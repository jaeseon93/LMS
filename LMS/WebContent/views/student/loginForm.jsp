<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../common/main.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300">
<head>
<title>로그인화면</title>
<script type="text/javascript">
	function formChecked() {
		var form = document.frm;
		if (form.id.value == "") {
			alert("아이디를 입력해주세요");
			form.id.focus();
			return false;
		}
		if (form.pw.value == "") {
			alert("비밀번호를 입력해주세요");
			form.pw.focus();
			return false;
		}
		form.submit();
	}
</script>
<style>
.login-page {
  position: relative;
  width: 2000px;
  padding: 4% 20% 50% 0;
  margin: margin: 0 auto 100px;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 500px;
  margin: 0 auto 100px;
  padding:  45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Raleway", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Raleway", sans-serif
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}

#main {
	margin-left:780px
}
</style>
</head>

<body>
<div align="center" style= padding:15px; class="col-sm-4 w3-green">
  <h2><b>로그인</b></h2>
</div>

<div class="login-page">
<div class="form" id="main">
    <form class="login-form" id="frm" name="frm" action="loginCheck.do" method="post" role="form">
      <input type="text" id="id" name="id" placeholder="username"/>
      <input type="password" id="pw" name="pw" placeholder="password"/>
      <button>login</button>
      <p class="message">Not registered? <a href="memberJoin.do">Create an account</a></p>
	<br><br><br><br>						

				<button type="button" class="w3-type w3-button w3-text-green w3-khaki w3-hover-white w3-round-large w3-large"
			        	onclick="formChecked()"><b>로그인</b></button>
				&nbsp;&nbsp;
				<button type="reset" class="w3-type w3-button w3-text-green w3-khaki w3-hover-white w3-round-large w3-large"><B>취소</B></button>
				&nbsp;&nbsp;
				<button type="button" class="w3-button w3-text-green w3-khaki w3-hover-white w3-round-large w3-large"
				        onclick="location.href='memberJoin.do'"><b>회원가입</b></button>

		</form><br><br>					
	</div>
	</div>
</body>
</html>
