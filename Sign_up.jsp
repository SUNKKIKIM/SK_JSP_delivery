<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 만족</title>
<style>
</style>
</head>
	<body>
	Home > Join the Membership
	<img src="image/배만.jpg" width="500" height="200">
	<br>
		<table border="3" width="80%">
		</table>
		<form action="Personal_Information.jsp" name="person" method="post">
			<fieldset style="width:500px">
				<legend> 개인 정보 입력 </legend><p>
					생년월일 : <br>
					<input type="text" maxlength="4" size="4" name="year" style="width:40px">년
					<input type="text" maxlength="2" size="2" name="month" style="width:20px">월
					<input type="text" maxlength="2" size="2" name="day" style="width:20px">일<br><br>
					
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
					
					성별 :
					<input type="radio" name="gender" value="남성">남
					<input type="radio" name="gender" value="여성">여 <br><br>
					
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