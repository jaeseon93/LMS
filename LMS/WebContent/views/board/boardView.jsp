<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../common/main.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>게시글 상세보는 페이지</title>
<style>
#main {
	margin-left:780px
}
  table {
    width: 50%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
</style>
</head>
<body>
	<div align="center" style= padding:15px; class="col-sm-4 w3-green">
  	<h2><b>게시글 보기</b></h2>
	</div>
	<div align="center">
	 <table>
	  	<tr height="50">
	  		<th width="120">작성자</th>
	  		<th width="120">날짜</th>
	  		<th width="200">제목</th>
	  		<th width="150">내용 </th>
	  		<th width="80">조회수</th>
	  	</tr>
	  	<tr height="30">
	  	 <td align="center"> ${views.writer} </td>
	  	 <td align="center"> ${views.wdate} </td>
	  	 <td align="center"> ${views.title} </td>
	  	 <td align="center"> ${views.contents} </td>
	  	 <td align="center"> ${views.hit} </td>
	  	</tr>	
	 </table>	
	</div><br><br><br>
	<div align="center">
	<button type="button" align="center" onclick="location.href='boardList.do'"
	 style="font-weight:bold; font-size:20px; color: steelblue; background:lightcyan; border-radius:0.5em;">목록보기</button>
	</div>
</body>
</html>
<br/>
<jsp:include page="../common/tail.jsp"></jsp:include>