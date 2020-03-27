<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../common/main.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
<style>
#main {
	margin-left:780px
}
table.type09 {
 	margin: 30px;
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
}
table.type09 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    background: Greenery;
    color: black;
    border-bottom: 3px solid green;
}
table.type09 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid green;
    background: #f3f6f7;
}
table.type09 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid green;
}
.all {
	margin-left:200px;
}
</style>
</head>
<body>
	<div align="center" style= padding:15px; class="col-sm-4 w3-green">
  	<h2><b>회원목록</b></h2>
	</div>
	
	<div  class="all" >
	 <table class="type09" style="border-collapse:collapse;">
	   <thead>
	  	<tr>
	  		<th>아이디</th>
	  		<th>회원명</th>
	  		<th>회원 주소</th>
	  		<th>회원 전화번호 </th>
	  		<th>성별</th>
	  		<th>취미</th>
	  	</tr>
	   </thead>
	  <c:choose>
	  	<c:when test="${empty members }">
	  	<tr>
	  	 <td>데이터가 없습니다.</td>
		</tr>
	  	</c:when>
	  </c:choose>
	   <tbody>
	  	 <c:forEach var="member" items="${members}">
	  	<tr height="30">
	  	 <td> ${member.id} </td>
	  	 <td> ${member.name} </td>
	  	 <td> ${member.addr} </td>
	  	 <td> ${member.tel} </td>
	  	 <td> ${member.gender} </td>
	  	 <td> ${member.hobby} </td>
	  	</tr>
	</c:forEach>	
	   </tbody>
	 </table>
	</div>
</body>
</html>
	<br>
<jsp:include page="../common/tail.jsp"></jsp:include>