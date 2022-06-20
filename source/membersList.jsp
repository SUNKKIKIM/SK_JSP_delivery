<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<%
	if(session.getAttribute("memberId") == null) {
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Members List </title>
</head>
<body>
	Home > 등록 회원 관리
	<hr>
	<table border="1">
	<%
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("SELECT name, phone, id, passwd, signuptime FROM member");
		
		String str = "";
		int count = 1;
		
		while(rs.next()){
            str += "<tr>" + "<td align = 'center'>"+ count + "</td>" +"<td>" + rs.getString("name") + "</td>" + "<td>" + rs.getString("phone") + "</td>" 
		+ "<td>" + rs.getString("id")  + "</td>" + "<td>" + rs.getString("passwd")  + "</td>" + "<td>" + rs.getString("signuptime") + "</td>" + "<td><center><a href='super_drawCheck.jsp? u_id=" + rs.getString("id") + "'> X </a></center></td>" +  "</tr>";
            count++;
         }

        out.print("<tr> <td> 번호 </td> <td>이름</td>  <td>전화번호</td> <td>아이디</td> <td>비밀번호</td> <td>가입 시간</td> <td>삭제</td> </tr>");
		out.print(str);
		
		rs.close();
		sm.close();
		conn.close();	
	%>
	<hr>
	<table border="1">	 
				<form action="logout.jsp" method="post" >
					<br><input type="submit" value=" 로그 아웃 " >&nbsp;&nbsp;
					<button type="button" onclick="location.href='withdraw.jsp';">  회원 탈퇴  </button>
				</form>
	</table>  		
</body>
</html>	