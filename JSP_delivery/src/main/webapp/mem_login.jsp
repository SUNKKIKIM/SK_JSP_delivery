<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 로그인 폼 </title>
<script type = "text/javascript">
	function check()
	{
		var f = document.loginForm;
		if(f.u_id.value.length < 4 || f.u_id.value.length > 16)
		{
			alert("아이디는 4~16자 이내로 입력해야 합니다.");
			f.u_id.focus();
			return false;
		}
		else if(f.u_pw.value.length < 6)
		{
			alert("비밀번호는 6자 이상으로 입력해야 합니다.");
			f.u_pw.focus();
			return false;
		}
		else return true;
	}
</script>
</head>
<body>
	Home > login
	<br>
		<form name="loginForm" action="Board_List.jsp" method="post" onsubmit="return check()" >
			<fieldset style="width:500px">
		
	<div align="center">
		아이디 : <br>
			<input type="text" name="u_id" size="16"><br><br>
					
		비밀번호 : <br>
			<input type="password" name="u_pw" size="16"><br><br>
			
	<div align="center">
			<input type="submit" value=" 로그인 ">
			<button type="button" onclick="location.href='signup.jsp';"> 회원가입 </button>&nbsp;&nbsp;
		</div><br>
		</fieldset>
	</form>
</body>
</html>