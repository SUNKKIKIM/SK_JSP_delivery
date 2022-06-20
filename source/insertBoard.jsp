<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String title = request.getParameter("title");
	String memo = request.getParameter("memo");
	
	String sql = "INSERT INTO board (title, memo) VALUES";
	sql += "('" + title + "','" + memo + "')";

	Statement sm = conn.createStatement();
	
	int count = sm.executeUpdate(sql);
	if(count == 1){
		out.println("등록되었습니다 !");
		response.sendRedirect("Board_Write_action.jsp");
	}else{
		out.println("등록 실패!");
		response.sendRedirect("insertBoard.jsp");
	}
	sm.close();
	conn.close();	
%>