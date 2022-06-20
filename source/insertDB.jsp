<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String birth = request.getParameter("birth");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String u_id = request.getParameter("u_id");
	String u_pw = request.getParameter("u_pw");
	
	String sql = "INSERT INTO member (birth, name, phone, id, passwd) VALUES";
	sql += "('" + birth + "','" + name + "','" + phone + "','" + u_id + "','" + u_pw + "')";

	Statement sm = conn.createStatement();
	
	int count = sm.executeUpdate(sql);
	if(count == 1){
		response.sendRedirect("signupSuccess.jsp");
	}else{
		out.println("회원가입 실패!");
		response.sendRedirect("signup.jsp");
	}
	sm.close();
	conn.close();	
%>