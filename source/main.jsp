<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 메인 화면 </title>
</head>
<body>
	<center>
	<img src="bgimg.jpg" width="400" height="300">
	<p>
	<table border="0">
		<tr>
			<td>
				<form action="super_login.jsp" method="post" >
					<input type="submit" value=" ◀ 관리자 로그인 " >
				</form>
			</td>
			<td>	
				<form action="mem_login.jsp" method="post" >
					<input type="submit" value=" 사용자 로그인 ▶" >
				</form>
			</td>
		</tr>	
	</table>	
	</center> 	
</body>
</html>