<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>작성한 게시물</title>
</head>
<body>
<center>
<caption>작성한 게시물</caption>
<table width="100%" border="1">
	<thead>
		<tr>
			<th>제목</th>
			<th>내용</th>
			<th>작성일자</th>
		</tr>
	</thead>
	<tbody>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			String url = "jdbc:mysql://localhost:3306/odbo";
			String user = "root";
			String passwd = "1234";
			
			conn = DriverManager.getConnection(url, user, passwd);
			
			pstmt = conn.prepareStatement("select * from board");	
			rs = pstmt.executeQuery();		
			while(rs.next()){
	%>
		<tr>
			<td><%= rs.getString("title") %></td>
			<td><%= rs.getString("memo") %></td>
			<td><%= rs.getString("dt") %></td>
		</tr>
	<%
			}
		}catch(SQLException se){
			se.printStackTrace();
		}finally{
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	%>
	</tbody>
</table>
<form action="drawBoard.jsp" name="BoarddrawForm" method="post">
	<br>
	<center>
	삭제 할 게시글 제목을 작성하시오 : <input type="text" name="title"> <br><br>
	<tr>
		<input type = "submit" value = "게시글 삭제하기">
	</tr>
</body>
</html>