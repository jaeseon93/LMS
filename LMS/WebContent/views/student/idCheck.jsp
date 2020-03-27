<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<style>
 h3 { 
 text-align: center;
 color: red;
 padding: 10px;
 }
</style>
<meta charset="UTF-8">
<title>아이디 중복검사</title>
 <script>
 	function formClose(n) {
 		if(n != 0) {
 			opener.document.getElementById("id").value = '';
 			opener.document.getElementById("id").focus(); 			
 			opener.document.getElementById("btn").disabled; 			
 		} else {
 			opener.document.getElementById("pw").focus(); 			
 			
 		}
 		window.close();
 	}
 </script>
</head>
<body>

	<c:if test="${check == '0'}">
		<h3 >${param.id } 는 사용가능한 아이디입니다.</h3>
	</c:if>
	<c:if test="${check == '1'}">
		<h3>${param.id } 는 이미 존재하는 아이디입니다.</h3>
	</c:if>	
	 <div align="center"><button type ="button" onClick="formClose((${check}))" value="닫기">확인</button></div>
		
	
</body>
</html>