<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 관리자 로그인 </title>
</head>
<body>
	Home > 관리자 로그인
	<hr>
	<%
		String u_id = request.getParameter("uID");
		String u_pw = request.getParameter("uPW");
		
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("SELECT * FROM super WHERE id='"+u_id+"' and passwd='"+u_pw+"';");
		
		if(rs.next()) {
			if(rs.getString("id").equals(u_id)) 
			{
				session.setAttribute("memberId", u_id);
				session.setAttribute("memberPw", u_pw);
				
				out.println("새로운 세션 생성 성공 ! <br>");
				out.println("관리자 [ " + u_id + " ]님이 입장하였습니다. <p>");
			}
			else
			{
				response.sendRedirect("super_loginErr.jsp");
			}
		}
		
		else
		{
			response.sendRedirect("super_loginErr.jsp");
		}
		
		rs.close();
		sm.close();
		conn.close();
	%>
	<table border="0">
		<tr>
			<td>
				<form action="membersList.jsp" method="post" >
					<input type="submit" value=" ◀ 등록 회원 관리하기 " >
				</form>
			</td>
			<td>
				<form action="logout.jsp" method="post" >
					<input type="submit" value=" 로그 아웃 ▶" >
				</form>
			</td>
	</table>  		
</body>
</html>