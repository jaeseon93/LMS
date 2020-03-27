<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="../common/main.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
</head>
<body>
	<div align="center">
		<div><br/></div>
			<div>
				<font size="5" color="red" face="휴먼매직체">로그인 실패!</font>
			</div><br><br>
				<h1>입력한 ${param.id }가 존재하지 않거나 비밀번호가 틀렸습니다.</h1>
		<div><br/><br/><br/></div>
	</div>
</body>
</html> 
<jsp:include page="../common/tail.jsp"></jsp:include>