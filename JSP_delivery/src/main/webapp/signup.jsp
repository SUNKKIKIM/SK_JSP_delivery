<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원가입 </title>
<script type = "text/javascript">
	function check()
	{
		var f = document.person;
		var regExpId = /^[a-z0-9]*$/;
		var regExPasswd = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{6,16}$/;

		if(f.birth.value.length < 13)
		{
			alert("주민등록번호를 입력해 주세요.");
			f.birth.focus();
			return false;
		}
		
		else if(f.name.value=="")
		{
			alert("이름을 입력해 주세요.");
			f.name.focus();
			return false;
		}
		
		else if(f.phone.value.length < 11)
		{
			alert("연락처를 입력해 주세요.");
			f.phone.focus();
			return false;
		}
		
		else if(f.u_id.value.length < 4 || f.u_id.value.length > 16)
		{
			alert("아이디는 4~16자 이내로 입력해야 합니다.");
			f.u_id.focus();
			return false;
		}
		else if(!regExpId.test(f.p_id.value))
		{
			alert("아이디는 소문자와 숫자로만 입력해주세요.");
			f.u_id.focus();
			return false;
		}
		else if(!regExPasswd.test(f.p_pw.value))
		{
			alert("비밀번호는 6~16자와 영문, 숫자, 특수문자를 최소 한가지씩 조합하여 입력해주세요.");
			f.u_pw.focus();
			return false;
		}
		else return true;
	}
</script>
<style>
</style>
</head>
	<body>
	Home > Join the Membership
	<br>
		<table border="3" width="80%">
		</table>
		<form action="insertDB.jsp" name="person" method="post" onsubmit="return check()">
			<fieldset style="width:500px">
				<legend> 개인 정보 입력 </legend><p>
					주민등록번호 : <br>
					<input type="password" maxlength="13" size="13" name="birth" style="width:60px"><br><br>
					
					이름 : <br>
					<input type="text" name="name" size="16"><br><br>
					
					연락처 : <br>
					<select name="choice" style="width:60px;height:20.5px">
						<option value="choice"> 선택 </option>
						<option value="KT"> KT </option>
						<option value="SKT"> SKT </option>
						<option value= "LGU+"> LGU+ </option>
					</select>
					<input type="text" maxlength="11" size="11" name="phone"><br><br>
									
					아이디 : <br>
					<input type="text" name="u_id" size="16"><br><br>
					
					비밀번호 : <br>
					<input type="password" name="u_pw" size="16"><br><br>
					
				<div align="center">
					<input type="submit" value=" 가입하기 "> &nbsp;&nbsp;
					<input type="reset" value=" 다시작성 "> &nbsp;&nbsp;
					<button type="button" onclick="location.href='mem_login.jsp';"> 뒤로가기 </button>
				</div><br>
				</fieldset>
			</form>
	</body>
</html>