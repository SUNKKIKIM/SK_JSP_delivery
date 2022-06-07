<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 만족</title>
</head>
<body>
	Home > Personal Information Inquiry
	<hr>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String birth = request.getParameter("birth");
		
		String name = request.getParameter("name");
		
		String choice = request.getParameter("choice");
		String phone = request.getParameter("phone");	
		
		String id = request.getParameter("u_id");
		String pw = request.getParameter("u_pw");		
	%>
			<p> 주민등록번호 : <%= birth %>
			<p> 이름 : <%= name %>
			<p> 연락처 : <%= choice %> <%= phone %>
			<p> 아이디 : <%= id %>
			<p> 비밀번호 : <%= pw %>		
</body>
</html>