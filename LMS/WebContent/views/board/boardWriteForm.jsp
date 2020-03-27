<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../common/main.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
  	function formDataCheck(){
  		var form = document.frm;
  		
  		if(form.writer.value== "") {
  			alert("작성자 이름을 입력하세요.");
  			form.writer.focus();
  			return false;
  		}
  		
  		if(form.wdate.value== "") {
  			alert("작성일자를  입력하세요.");
  			form.wdate.focus();
  			return false;
  		}
  		
  		if(form.title.value== "") {
  			alert("제목을 입력하세요.");
  			form.title.focus();
  			return false;
  		}
  		
  		if(form.contents.value== "") {
  			alert("내용을 입력하세요.");
  			form.contents.focus();
  			return false;
  		}
  	}
  </script>
</head>
<body>
	<div align="center">
	 	<div align="center" style="padding: 15px;" class="col-sm-4 w3-green">
		<h2>
			<b>게시글 작성</b>
		</h2>
	</div>
	 
	 
	 
	  <form id="frm" name="frm" action="boardInput.do" method="post" onsubmit="return formDataCheck()">
	 <div align="center">
	 	<table border="1" style="border-collapse:collapse;">
	 		<tr height="40">
	 			<th width="120"> * 작성자</th>
	 			<td width="650"><input type="text" id="writer" name="writer" size="30"></td>
	 		</tr>
	 		<tr height="40">
	 			<th> * 작성일자</th> 
	 			<td width="650"><input type="date" id="wdate" name="wdate" size="30">
	 			</td>
	 		</tr>
	 		<tr height="40">
	 			<th width="80"> * 제목</th>
	 			<td width="650"><input type="text" id="title" name="title" size="30"></td>
	 		</tr>
	 		<tr height="40">
	 			<th width="80"> * 내용</th>
	 			<td width="650"><textarea id="contents" name="contents" rows="10" cols="30"></textarea></td>
	 		</tr>
			<tr height="50">
			 <th width="80">첨부파일</th>
			 <td><input type="file" id="file" name="file" size="50"></td>
			</tr>
	 	</table>
	 </div>
	  	<br/>
	 	<div>
	 		<input type="submit" onclick="formDataCheck()" value="저장하기"
	 		style="font-weight:bold; font-size:20px; color: steelblue; background:lightcyan; border-radius:0.5em;" >&nbsp;&nbsp;
	 		<input type="reset" value="취소"
	 		style="font-weight:bold; font-size:20px; color: steelblue; background:lightcyan; border-radius:0.5em;" >&nbsp;&nbsp;
	 		<input type="button" value="목록보기" onclick="location.href='boardList.do'" 
	 		style="font-weight:bold; font-size:20px; color: steelblue; background:lightcyan; border-radius:0.5em;" > <!-- 루트인  webContent경로로 보기  -->
	 	</div>
	  </form>
	</div>
</body>
</html>
	<br>
	<jsp:include page="../common/tail.jsp"></jsp:include>