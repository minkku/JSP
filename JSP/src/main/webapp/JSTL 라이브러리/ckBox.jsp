<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>악세사리</h2>
	Choose acc <hr>
	<form method = "get" action = "paramValues.jsp">
		<input type = "checkbox" name = "item" value = "신발">시발
		<input type = "checkbox" name = "item" value = "가방">가방
		<input type = "checkbox" name = "item" value = "벨트">벨트
		<input type = "checkbox" name = "item" value = "모자">모자
		<input type = "checkbox" name = "item" value = "시계">시계
		<input type = "checkbox" name = "item" value = "주얼리">주얼리
		<input type = "submit" value = "ok">
	</form>
</body>
</html>