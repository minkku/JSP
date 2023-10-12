<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 실제로 DB에서 가져와야하는 값
	String id = "lee";
	String pw = "1234";
	String name = "min";
	
	// input 태그 안에 name 속성을 넣지 않으면 매개변수로 사용이 불가능 따라서 밑에 값이 다 null로 들어오기 떄문에 동작하지 않는다.
	if(id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pw"))) {
		// id, pw가 같을때만 쿠키 생성 client 추가
		// 1. cookie 객체 생성 (username에 min을 맵핑)
		Cookie ck = new Cookie("userName",URLEncoder.encode(name, "UTF-8"));
		// 2. 속성 부여
		ck.setMaxAge(356*24*60*60);
		// 3. 클라이언트에게 전송
		response.addCookie(ck);
%>
	<h2>로그인에 성공하셨습니다.</h2>
	<p><a href = "main.jsp">들어가기</a></p>
<%
} else { 
%>
	<h2>로그인에 실패하였습니다.</h2>
	<p><a href = "loginForm.jsp">돌아가기</a></p>
<%
}
%>

</body>
</html>