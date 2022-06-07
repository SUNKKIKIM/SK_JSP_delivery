<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 탈퇴 </title>
</head>
<body>
	Home > 회원 탈퇴하기
	<hr>
	<form action="drawCheck.jsp" name="user_info" method="post">
		<fieldset style="width:200px">
			<legend> 회원 탈퇴 </legend><p>
	
			아이디 : <br>
			<input type="text" name="u_id"><br>
			비밀번호 : <br>
			<input type="password" name="u_pw"><br>
			
		<div align="center">
			<input type="submit" value=" 회원 탈퇴 ▶ "> &nbsp;&nbsp;
		</div><br>
		</fieldset>
	</form>
</body>
</html>