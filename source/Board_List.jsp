<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title> 게시판 목록 </title>
<script type="text/javascript">
	function move(url){
		location.href=url;
	}

</script>
</head>
<body>
	<center>
	<%
	if(session.getAttribute("memberId") == null)
	{
		String id = request.getParameter("u_id");
		String pw = request.getParameter("u_pw");
		
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("SELECT * FROM member WHERE id='"+ id +"' and passwd='"+ pw +"';");
		
		if(rs.next()) {
			if(rs.getString("id").equals(id)) 
			{
				session.setAttribute("memberId", id);
				out.println("사용자 [ " + id + " ]님의 홈페이지입니다. <p>");
			}
			else
			{
				response.sendRedirect("mem_loginErr.jsp");
			}
		}
		else
		{
			response.sendRedirect("mem_login.jsp");
		}
		rs.close();
		sm.close();
		conn.close();
	}

	%>
		<center>
		<img src="메모.jpg" width="300" height="400">
		<p>
		<form action="GetBoard.jsp" name="BoardListForm" method="post">
		<tfoot>
			<tr>
				<input type = "submit" value = "작성 게시글 보기">
			</tr>
		</tfoot>
		<input type="button" value="글쓰기" onclick="move('Board_Write.jsp');" >
		</form>
	<table border="0">
		<tr>
			<td>
				<form action="withdraw.jsp" method="post" >
					<input type="submit" value=" ◀ 회원 탈퇴 " >
				</form>
			</td>
			<td>
				<form action="logout.jsp" method="post" >
					<input type="submit" value=" 로그 아웃 ▶ " >
				</form>
			</td>
	</table>
</body>
</html>