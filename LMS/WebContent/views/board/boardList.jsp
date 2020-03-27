<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../common/main.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
<meta charset="UTF-8">
<title>게시판목록</title>
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
    padding: 30px;
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
  	<h2><b>게시판목록</b></h2>
	</div>
	
	<div class="all">
	 <table class="type09" style="border-collapse:collapse;">
	  <thead>
	  	<tr>
	  		<th>번호</th>
	  		<th>제목</th>
	  		<th>작성자</th>
	  		<th>날짜 </th>
	  		<th>조회수</th>
	  	</tr>
	  </thead>
	  <c:choose>
	  	<c:when test="${empty boards }">
		 <tr>
	  	 <td>데이터가 없습니다.</td>
		 </tr>
	  	</c:when>
	  </c:choose>
	   <tbody>
	  	 <c:forEach var="board" items="${boards}">
	  	<tr height="30" onmouseover="this.style.background='yellow'" 
	  	                onmouseout="this.style.background='white'"
	  		            onclick="location.href='boardView.do?boardid=${board.boardid}'">
	  	 <td> ${board.boardid} </td>
	  	 <td> ${board.title} </td>
	  	 <td> ${board.writer} </td>
	  	 <td> ${board.wdate} </td>
	  	 <td> ${board.hit} </td>
	  	</tr>
	</c:forEach>	
	   </tbody>
	 </table>	
	</div>
	<div align="center">
	 <button type= "submit" onclick="location.href='boardWriteForm.do'"
		 class="w3-type w3-button w3-text-green w3-khaki w3-hover-white w3-round-large w3-large"><b>글쓰기</b> </button>
	</div>
	<br><br><br>
</body>
</html>
	<br>
<jsp:include page="../common/tail.jsp"></jsp:include>