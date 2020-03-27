<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../common/main.jsp"></jsp:include>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<div align="center">
		<div>
	    	<font size="5" color="blue" face="휴먼매직체">로그인 성공!</font>
	 		<h1>${member.id } 님 환영합니다.</h1>
		</div>
		<div><br/></div>
	</div>
</body>
</html>
<jsp:include page="../common/tail.jsp"></jsp:include>