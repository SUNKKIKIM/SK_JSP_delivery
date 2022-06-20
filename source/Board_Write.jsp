<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 글쓰기 </title>
<script type="text/javascript">
	function boardWriteCheck() {
		var form = document.BoardWriteForm;
		return true;
	}
</script>
</head>
<body>
	<table summary="글쓰기 전체 테이블">
		<form name="BoardWriteForm" method="post" action="insertBoard.jsp" onsubmit="return boardWriteCheck();" >	
   		<colgroup>
   			<col width="20%">
   			<col width="80%">
   		</colgroup>
		<table summary="테이블 구성" >
		<caption> 게시판 글쓰기 </caption>	
    		<tr>
     			<td>제 목</td>
     			<td><input type=text name=title></td>
    		</tr>
    		<tr>
     			<td>내 용</td>
     			<td><textarea name=memo rows ="10" cols="100"></textarea></td>
    		</tr>
    		<tr>
     			<td colspan=2><hr size=1></td>
    		</tr>
    		<tr>
     			<center>
     			<input type="submit" value="등록하기" >&nbsp;&nbsp;
     			</td>
    		</tr> 
		</table>
	</form> 
</table>

</body>
</html>