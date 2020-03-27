<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="../common/main.jsp"></jsp:include>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
 .login-page {
  position: relative;
  width: 100px;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  width: 700px;
  max-width: 3000px;
  margin: 36px 50px 50px 50px;
  padding:  45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}

#main {
	margin-left:630px
}
</style>
<script type="text/javascript">
	function idCheck() {
	 var id = document.frm.id.value;  // body에 frm이라는 아이디의 파라미터id의 값을 담음.
	 window.open("idCheck.do?id="+id,"ID 중복체크","width=500, height=300, menubar=no,status=no, toolbar=no"); //새창을 염 (호출할url,창이름,크기)
	} 
	 
</script>
</head>
<body>
	<div align="center" style="padding: 15px;" class="col-sm-4 w3-green">
		<h2>
			<b>회원가입</b>
		</h2>
	</div>

<div class="login-page w3-text-black w3-margin-top">
<div class="form" id="main">

  	<div class="w3-col" style="width: 50px">
		<i class="w3-xxlarge fa fa-user w3-text-lime"></i>
	</div>
		
 	<form class="login-form" id="frm" name="frm" action="memberInsert.do" method="post"
		onsubmit="return formDataCheck()">
		<div class="w3-row w3-section">
			<div class="w3-rest">
				<input class="w3-input w3-border" id="name" name="name" type="text"
				       required placeholder="*회원명을 입력하세요.">
			</div>
		</div>
	<div class="w3-row w3-section">
			<div class="w3-rest">
				<input class="w3-input w3-border" id="id" name="id" type="text"
					   required placeholder="*아이디를 입력하세요.">
				<input type="button" id="btn" name="btn" onClick="idCheck()" value="중복체크">
			</div>
	</div>


		<div class="w3-row w3-section">
			<div class="w3-rest">
			  <input type="radio" name="gender" id="gender" value="남자" checked>남자&nbsp;&nbsp;
			  <input type="radio" name="gender" id="gender" value="여자">여자&nbsp;&nbsp;
			</div>
		</div>

		<div class="w3-row w3-section">
			<div class="w3-rest">
				<input class="w3-input w3-border" type="password" id="pw" name="pw"
					   required placeholder="* 패스워드를 입력하세요.">
			</div>
		</div>
		<div class="w3-row w3-section">
			<div class="w3-rest">
				<input class="w3-input w3-border" type="password" id="pwc"
					   required placeholder="*한번 더 패스워드를 입력하세요.">
			</div>
		</div>
		<div class="w3-row w3-section">
		 	<div class="w3-col" style="width: 50px">
				<i class="w3-xxlarge fa fa-phone w3-text-lime"></i>
			</div>
			<div class="w3-rest">
				<input class="w3-input w3-border" type="text" id="tel" name="tel"
					placeholder="전화번호를 입력하세요.">
			</div>
		</div>
		<div class="w3-row w3-section">
		 	<div class="w3-col" style="width: 50px">
				<i class="w3-xxlarge fa fa-pencil w3-text-lime"></i>
			</div>
			<div class="w3-rest">
				<input class="w3-input w3-border" type="text" id="addr" name="addr"
					placeholder="주소를 입력하세요.">
			</div>
		</div>	
		<div class="w3-row w3-section">
			<div class="w3-rest">
				<input type="checkbox" name="hobby" id="hobby" value="등산">등산&nbsp;
				<input type="checkbox" name="hobby" id="hobby" value="운동">운동&nbsp;
				<input type="checkbox" name="hobby" id="hobby" value="여행">여행&nbsp;
				<input type="checkbox" name="hobby" id="hobby" value="요리">요리
			</div>
		</div>	
		
		
		
			<input type="submit"
				  class="w3-type w3-button w3-text-green w3-khaki w3-hover-white w3-round-large w3-large"
				  onclick="formDataCheck()" value="가입하기">
		   <input type="reset"
				  class="w3-type w3-button w3-text-green w3-khaki w3-hover-white w3-round-large w3-large"
				  value="취소">
			<input type="button"
				   class="w3-button w3-text-green w3-khaki w3-hover-white w3-round-large w3-large"
				  onclick="location.href='index.jsp'" value="홈으로 가기">
			<!-- 루트인  webContent경로로 보기  -->
	 </form>
	 </div>
	</div>
</body>
</html>
<br><br><br>
<jsp:include page="../common/tail.jsp"></jsp:include>
