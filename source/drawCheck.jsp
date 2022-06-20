<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String u_id = request.getParameter("u_id");
	String u_pw = request.getParameter("u_pw");
	String sql = "DELETE FROM member WHERE id=? and passwd=?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, u_id);
	sm.setString(2, u_pw);
	
	int count = sm.executeUpdate();
	
	if(count == 1){
		response.sendRedirect("membersList.jsp");
	}else{
		response.sendRedirect("drawErr.jsp");
	}
	sm.close();
	conn.close();	
%>