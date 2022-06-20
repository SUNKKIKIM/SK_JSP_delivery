<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String u_id = request.getParameter("u_id");
	String sql = "DELETE FROM member WHERE id=?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, u_id);
	
	int count = sm.executeUpdate();
	
	if(count == 1){
		response.sendRedirect("membersList.jsp");
	}else{
		response.sendRedirect("drawErr.jsp");
	}
	sm.close();
	conn.close();	
%>