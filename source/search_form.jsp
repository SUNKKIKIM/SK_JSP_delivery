<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
	Home > 회원 정보
	<hr>
	<table border="1">
	<% 
		String u_name = request.getParameter("name");
		String u_phone = request.getParameter("phone");
		
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("SELECT name, phone, signuptime FROM member");
		
		String str = "";
		int count = 1;
		
		while(rs.next()){
            str += "<tr>" + "<td align = 'center'>"+ count + "</td>" +"<td>" + rs.getString("name") + "</td>" + "<td>" + rs.getString("phone")
               + "</td>" + "<td>" + rs.getString("signuptime") + "</td>" + "</tr>";
            count++;
         }

        out.print("<tr> <td> 번호 </td> <td>이름</td> <td>전화번호</td> <td>가입 시간</td> </tr>");
		out.print(str);
		
		rs.close();
		sm.close();
		conn.close();	
	%>
	<hr>
	<table border="1">
	<br><button type="button" onclick="location.href='mem_login.jsp';">  뒤로가기  </button>&nbsp;&nbsp;
	<button type="button" onclick="location.href='updateform.jsp';">  회원 수정  </button>
</body>
</html>