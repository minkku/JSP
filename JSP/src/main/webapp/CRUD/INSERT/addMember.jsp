<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>

<%!
	Connection conn = null;
	PreparedStatement ps = null;
	
	String url = "jdbc:mysql://localhost:3306/nscott";
	String user = "root";
	String password = "ezen1234";
	
	String sql = "insert into member (name, userId, pw, email, mobile, admin) values (?,?,?,?,?,?)";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String userId = request.getParameter("userId");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String admin = request.getParameter("admin");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, userId);
			ps.setString(3, pw);
			ps.setString(4, email);
			ps.setString(5, mobile);
			ps.setInt(6, Integer.parseInt(admin));
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();	
		} finally {
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		}
	%>
	<h3>회원가입 성공</h3>
	<a href = "../SELECT/allMember.jsp">회원 전체 목록 보기</a>
</body>
</html>