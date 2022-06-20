<%@ page import = "java.sql.*" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 수정</title>
</head>
<body>
<%
	// post 한글처리
	request.setCharacterEncoding("utf-8");
	// request 파라미터 값 가져오기 id passwd name
	String u_id = request.getParameter("u_id");
	String u_pw = request.getParameter("u_pw");
	String name = request.getParameter("name");
	
	// DB 연결정보
	Connection conn = null;
	String url = "jdbc:mysql://localhost:3306/odbo";
	String user = "root";
	String passwd = "1234";
	
	PreparedStatement pstmt = null;
	PreparedStatement pstmt2 = null;
	ResultSet rs = null;

	String sql = "";

	// 1. 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");

	// 2. DB 연결
	conn = DriverManager.getConnection(url, user, passwd);

	// 3. id에 해당하는 passwd 가져오기	
	sql = "select passwd from member where id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, u_id);

	// 4. 실행  rs 실행저장
	rs = pstmt.executeQuery();


	if (rs.next()) {
		// 아이디 있음
		if (u_pw.equals(rs.getString("passwd"))) {
			pstmt.close();  // select 문장객체 닫기

			
			// 맞으면 update "수정성공"
			sql = "update member set name=? where id=? and passwd=?";
			pstmt2 = conn.prepareStatement(sql);
			pstmt2.setString(1, name);
			pstmt2.setString(2, u_id);
			pstmt2.setString(3, u_pw);

			// 실행
			pstmt2.executeUpdate();
			out.println("수정성공<br>");
		} else {
			out.println("패스워드 틀림");
		}
	} else {
		out.println("아이디 없음");
	}

	// JDBC 자원닫기
	rs.close();
	pstmt.close();  // delete 문장객체 닫기
	conn.close();
%>
<center>
<button type="button" onclick="location.href='main.jsp';">  메인화면  </button>
</center>
</body>
</html>