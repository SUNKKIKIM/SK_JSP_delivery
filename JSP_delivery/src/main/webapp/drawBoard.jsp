<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String title = request.getParameter("title");
	String sql = "DELETE FROM board WHERE title=?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, title);
	
	int count = sm.executeUpdate();
	
	if(count == 1){
		response.sendRedirect("mem_login.jsp");
	}else{
		out.println("삭제 실패!");
	}
	sm.close();
	conn.close();
%>