<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] ck = request.getCookies();

	String str = null;
	
	if(ck != null){
		for(Cookie c : ck) {
			str = URLDecoder.decode(c.getValue(), "UTF-8");
		}
		out.print(str);
	
%>
	<h1>로그인 성공 추카추카</h1>
	<h2><%="name"%>반갑습니다.</h2>
	<form method = "post" action = "logout.jsp">
		<input type = "submit" value = "로그아웃">
	</form> 
<%
	} else {
%>

	<h2>로그인에 실패하였습니다.</h2>
	<p><a href = "loginForm.jsp"></a></p>
</body>
</html>