<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<!-- URLEncoder.encode 을 사용하기 위해 java.net.URLEncoder을 import 해줘야함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = "min";
		String pw = "qw1234";
		String name = "이민규";
		
		request.setCharacterEncoding("UTF-8");
		if(id.equals(request.getParameter("id")) &&
				(pw.equals(request.getParameter("pw")))
				){
			response.sendRedirect("main2.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
		} else {
			response.sendRedirect("loginForm.jsp");
		}
	%>
</body>
</html>