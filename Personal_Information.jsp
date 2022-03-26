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
		
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		
		String name = request.getParameter("p_name");
		
		String choice = request.getParameter("choice");
		String ph1 = request.getParameter("phone1");
		String ph2 = request.getParameter("phone2");
		String ph3 = request.getParameter("phone3");
		
		String sex = request.getParameter("gender");
		
		String id = request.getParameter("p_id");
		String pw = request.getParameter("p_pw");		
		%>
			<p> 생년월일 : <%= year %><%= month %><%= day %>
			<p> 이름 : <%= name %>
			<p> 연락처 : <%= choice %> <%= ph1 %>-<%= ph2 %>-<%= ph3 %>
			<p> 성별 : <%= sex %>
			<p> 아이디 : <%= id %>
			<p> 비밀번호 : <%= pw %>		
</body>
</html>