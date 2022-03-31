<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 만족</title>
<script type = "text/javascript">
	function check()
	{
		var f = document.person;
		if(f.p_id.value.length < 4 || f.p_id.value.length > 16)
		{
			alert("아이디는 4~16자 이내로 입력해야 합니다.");
			f.p_id.focus();
			return false;
		}
		else if(f.p_pw.value.length < 8)
		{
			alert("비밀번호는 8자 이상으로 입력해야 합니다.");
			f.p_pw.focus();
			return false;
		}
		else return true;
	}
</script>
</head>
<body>
	Home > Login
	<img src="image/배만.jpg" width="500" height="200">
	<br>
		<table border="3" width="80%">
		</table>
		<form action="Sign_up.jsp" name="person" method="post" onsubmit = "return check()">
			<fieldset style="width:500px">
		
		아이디 : <br>
			<input type="text" name="p_id" size="16"><br><br>
					
		비밀번호 : <br>
			<input type="password" name="p_pw" size="16"><br><br>
			
	<div align="center">
			<input type="submit" value=" 회원가입 "> &nbsp;&nbsp;
			<input type="submit" value=" 로그인 ">
		</div><br>
		</fieldset>
	</form>
</body>
</html>