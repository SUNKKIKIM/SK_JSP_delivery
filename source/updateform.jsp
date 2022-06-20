<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정</title>
</head>
<body>
	<center>
	<form action="update.jsp" method="post">
  		아이디 : <input type="text" name="u_id"><br><br>
  		비밀번호 : <input type="password" name="u_pw"><br><br>
  		수정할 이름 : <input type="text" name="name"><br>
  		<br><button type="button" onclick="location.href='search_form.jsp';">  뒤로가기  </button>&nbsp;&nbsp;
 		<input type="submit" value="회원수정">
    </form>
    </center>
</body>
</html>