<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 만족</title>
</head>
<body>
	Home > Login
	<img src="image/배만.jpg" width="500" height="200">
	<br>
		<table border="3" width="80%">
		</table>
		<form action="Sign_up.jsp" name="person" method="post">
			<fieldset style="width:500px">
			
		아이디 : <br>
			<input type="text" name="p_id" size="16"><br><br>
					
		비밀번호 : <br>
			<input type="password" name="p_pw" size="16"><br><br>
			
	<div align="center">
			<input type="submit" value=" 회원가입 "> &nbsp;&nbsp;
			<input type="reset" value=" 로그인 ">
		</div><br>
		</fieldset>
	</form>
</body>
</html>