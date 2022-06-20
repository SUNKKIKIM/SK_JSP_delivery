<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 글쓰기 완료 </title>
<script type="text/javascript">
	function move(url){
		location.href=url;
	}
</script>
</head>
<body>
		작업이 완료되었습니다. 목록으로 돌아갑니다. <br><br>
		<tr>
     			<td colspan="2"><div align="center">
     			<input type="button" value="메인 화면으로 돌아가기" onclick="move('Board_List.jsp');" >
     			</td>
    	</tr>
</body>
</html>