<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>검색 엔진 정보 페이지</h2>
	<h4>검색 엔진을 선택하슈.</h4>
	<form action = "controller.jsp">
		<select name = "pg">
			<option value = "selected">---------</option>
			<option value ="https://www.naver.com">네이버</option>
			<option value ="https://www.youtube.com">유튜브</option>	
		</select>
	<input type = "submit" value = "이동">
	</form>
</body>
</html>