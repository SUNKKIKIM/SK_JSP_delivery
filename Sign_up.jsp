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
		var id = f.p_id.value;
		var pw = f.p_pw.value;
		var regExpId = /^[a-z0-9]*$/;
		var regExPasswd = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;


		if(f.sn1.value.length < 6)
		{
			alert("주민등록번호를 입력해 주세요.");
			f.sn1.focus();
			return false;
		}
		else if(f.sn2.value.length < 7)
		{
			alert("주민등록번호를 입력해 주세요.");
			f.sn2.focus();
			return false;
		}
		
		else if(f.p_name.value=="")
		{
			alert("이름을 입력해 주세요.");
			f.p_name.focus();
			return false;
		}
		
		else if(f.phone1.value.length < 3)
		{
			alert("연락처를 입력해 주세요.");
			f.phone1.focus();
			return false;
		}
		else if(f.phone2.value.length < 4)
		{
			alert("연락처를 입력해 주세요.");
			f.phone2.focus();
			return false;
		}
		else if(f.phone3.value.length < 4)
		{
			alert("연락처를 입력해 주세요.");
			f.phone3.focus();
			return false;
		}
		
		else if(f.adress1.value=="")
		{
			alert("주소를 입력해 주세요.");
			f.adress1.focus();
			return false;
		}
		else if(f.adress2.value=="")
		{
			alert("주소를 입력해 주세요.");
			f.adress2.focus();
			return false;
		}
		
		else if(f.p_id.value.length < 4 || f.p_id.value.length > 16)
		{
			alert("아이디는 4~16자 이내로 입력해야 합니다.");
			f.p_id.focus();
			return false;
		}
		else if(!regExpId.test(id))
		{
			alert("아이디는 소문자와 숫자로만 입력해주세요.");
			f.p_id.focus();
			return false;
		}
		else if(!regExPasswd.test(pw))
		{
			alert("비밀번호는 8~16자와 영문, 숫자, 특수문자를 최소 한가지씩 조합하여 입력해주세요.");
			f.p_pw.focus();
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
	<img src="image/배만.jpg" width="500" height="200">
	<br>
		<table border="3" width="80%">
		</table>
		<form action="Personal_Information.jsp" name="person" method="post" onsubmit = "return check()">
			<fieldset style="width:500px">
				<legend> 개인 정보 입력 </legend><p>
					주민등록번호 : <br>
					<input type="text" maxlength="6" size="6" name="sn1" style="width:60px"> -
					<input type="password" maxlength="7" size="7" name="sn2" style="width:60px"><br><br>
					
					이름 : <br>
					<input type="text" name="p_name" size="16"><br><br>
					
					연락처 : <br>
					<select name="choice" style="width:60px;height:20.5px">
						<option value="choice"> 선택 </option>
						<option value="KT"> KT </option>
						<option value="SKT"> SKT </option>
						<option value= "LGU+"> LGU+ </option>
					</select>
					<input type="text" maxlength="3" size="3" name="phone1"> -
					<input type="text" maxlength="4" size="4" name="phone2"> -
					<input type="text" maxlength="4" size="4" name="phone3"><br><br>
					
					주소 : <br>
					<input type="text" name="adress1" size="45"><br>
					<input type="text" name="adress2" size="25"><br><br>
					
					아이디 : <br>
					<input type="text" name="p_id" size="16"><br><br>
					
					비밀번호 : <br>
					<input type="password" name="p_pw" size="16"><br><br>
					
				<div align="center">
					<input type="submit" value=" 가입하기 "> &nbsp;&nbsp;
					<input type="reset" value=" 다시작성 ">
				</div><br>
				</fieldset>
			</form>
	</body>
</html>